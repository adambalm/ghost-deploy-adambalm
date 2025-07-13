// Experimental RSS -> LLM -> Ghost CMS ingestion pipeline
// This script is separate from existing workflows.

require('dotenv').config();
const Parser = require('rss-parser');
const { OpenAI } = require('openai');
const axios = require('axios');
const jwt = require('jsonwebtoken');

const FEED_URL = 'https://substack-feed-proxy.onrender.com/proxy';
const { OPENAI_API_KEY, GHOST_ADMIN_KEY, GHOST_ADMIN_URL } = process.env;

if (!OPENAI_API_KEY || !GHOST_ADMIN_KEY || !GHOST_ADMIN_URL) {
  console.error('Missing required environment variables.');
  process.exit(1);
}

async function fetchFeed() {
  const parser = new Parser();
  console.log(`Fetching feed: ${FEED_URL}`);
  return parser.parseURL(FEED_URL);
}

function filterPosts(items) {
  return items
    .filter(item => !item['content:encoded'].includes('Only for paid subscribers'))
    .sort((a, b) => new Date(b.pubDate) - new Date(a.pubDate))
    .slice(0, 3);
}

async function transformContent(content, openai) {
  const messages = [
    { role: 'system', content: 'You are a helpful assistant that converts Substack posts into HTML for Ghost CMS.' },
    { role: 'user', content: `Rewrite this Substack post as HTML suitable for a Ghost CMS blog post.\n\n${content}` }
  ];
  const completion = await openai.chat.completions.create({
    model: 'gpt-4',
    messages
  });
  return completion.choices[0].message.content.trim();
}

function getGhostToken() {
  const [id, secret] = GHOST_ADMIN_KEY.split(':');
  return jwt.sign({}, Buffer.from(secret, 'hex'), {
    keyid: id,
    algorithm: 'HS256',
    expiresIn: '5m',
    audience: '/admin/'
  });
}

async function createDraftPost(post, html, token) {
  const url = `${GHOST_ADMIN_URL.replace(/\/$/, '')}/posts/?source=html`;
  const payload = {
    posts: [{ title: post.title, html, status: 'draft' }]
  };
  try {
    const res = await axios.post(url, payload, {
      headers: { Authorization: `Ghost ${token}` }
    });
    console.log(`Created draft: ${post.title} -> ${res.status}`);
  } catch (err) {
    const msg = err.response ? `${err.response.status} ${err.response.data}` : err.message;
    console.error(`Error creating post: ${msg}`);
  }
}

async function main() {
  const openai = new OpenAI({ apiKey: OPENAI_API_KEY });
  try {
    const feed = await fetchFeed();
    const posts = filterPosts(feed.items);
    console.log(`Processing ${posts.length} posts...`);
    const token = getGhostToken();

    for (const post of posts) {
      console.log(`Transforming: ${post.title}`);
      const html = await transformContent(post['content:encoded'], openai);
      await createDraftPost(post, html, token);
    }
    console.log('Finished processing posts.');
  } catch (err) {
    console.error(`Unexpected error: ${err.message}`);
  }
}

main();
