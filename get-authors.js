require('dotenv').config();
const axios = require('axios');
const jwt = require('jsonwebtoken');

const { GHOST_ADMIN_KEY, GHOST_ADMIN_URL } = process.env;

function getGhostToken() {
  const [id, secret] = GHOST_ADMIN_KEY.split(':');
  return jwt.sign({}, Buffer.from(secret, 'hex'), {
    keyid: id,
    algorithm: 'HS256',
    expiresIn: '5m',
    audience: '/admin/'
  });
}

async function getAuthors() {
  const token = getGhostToken();
  const url = `${GHOST_ADMIN_URL.replace(/\/$/, '')}/users/`;

  try {
    const res = await axios.get(url, {
      headers: { Authorization: `Ghost ${token}` }
    });

    console.log("📜 Available authors:\n");
    res.data.users.forEach(user => {
      console.log(`- ${user.name} [slug: ${user.slug}] → ID: ${user.id}`);
    });

  } catch (err) {
    const msg = err.response
      ? `${err.response.status} ${JSON.stringify(err.response.data)}`
      : err.message;
    console.error("Failed to fetch authors:", msg);
  }
}

getAuthors();
