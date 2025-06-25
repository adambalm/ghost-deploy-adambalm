Writing 

Wave or Particle is a choice.

Is free will a falsifiable proposition


TRUCTURE.md and DEPLOYMENT.md for project clarity"
[main dc2dc3f] docs: add STRUCTURE.md and DEPLOYMENT.md for project clarity
 2 files changed, 125 insertions(+)
 create mode 100644 DEPLOYMENT.md
 create mode 100644 STRUCTURE.md

C:\Users\alexisgreenblatt\ghost\ghost-deploy-adambalm>git push
remote: Permission to adambalm/ghost-deploy-adambalm.git denied to adambalm.
fatal: unable to access 'https://github.com/adambalm/ghost-deploy-adambalm.git/'
: The requested URL returned error: 403

C:\Users\alexisgreenblatt\ghost\ghost-deploy-adambalm>git push
remote: Permission to adambalm/ghost-deploy-adambalm.git denied to adambalm.
fatal: unable to access 'https://github.com/adambalm/ghost-deploy-adambalm.git/'
: The requested URL returned error: 403

C:\Users\alexisgreenblatt\ghost\ghost-deploy-adambalm>git remote set-url origin
https://github_pat_11A7SMC6I0ozkAYT5WVoId_YTTZ2VgUCT1Lxpw4DZq8pOwVcoqEGGPdGSMrs3
RfllQUWZTJG2V1oPqRPZw@github.com/adambalm/ghost-deploy-adambalm.git

C:\Users\alexisgreenblatt\ghost\ghost-deploy-adambalm>git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 2.01 KiB | 1.00 MiB/s, done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/adambalm/ghost-deploy-adambalm.git
   241a4e5..dc2dc3f  main -> main

C:\Users\alexisgreenblatt\ghost\ghost-deploy-adambalm>git remote set-url origin
https://github.com/adambalm/ghost-deploy-adambalm.git

C:\Users\alexisgreenblatt\ghost\ghost-deploy-adambalm>cd C:\Users\alexisgreenbla
tt\ghost\dawn\ghost-theme-adambalm-main

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>ls -l
'ls' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>dir
 Volume in drive C is Windows8_OS
 Volume Serial Number is 3211-C19F

 Directory of C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main

06/24/2025  02:33 PM    <DIR>          .
06/24/2025  02:33 PM    <DIR>          ..
06/24/2025  02:18 PM    <DIR>          assets
06/24/2025  02:18 PM             3,617 author.hbs
06/24/2025  02:18 PM               306 custom-full-feature-image.hbs
06/24/2025  02:18 PM               308 custom-narrow-feature-image.hbs
06/24/2025  02:18 PM               307 custom-no-feature-image.hbs
06/24/2025  02:18 PM             5,311 default.hbs
06/24/2025  02:18 PM             2,567 gulpfile.js
06/24/2025  02:18 PM               200 index.hbs
06/24/2025  02:18 PM             1,078 LICENSE
06/24/2025  02:18 PM             3,238 package.json
06/24/2025  02:18 PM               115 page.hbs
06/24/2025  02:18 PM    <DIR>          partials
06/24/2025  02:18 PM               251 post.hbs
06/24/2025  02:18 PM             1,971 README.md
06/24/2025  02:18 PM               237 routes.yaml
06/24/2025  02:18 PM               768 tag.hbs
              14 File(s)         20,274 bytes
               4 Dir(s)  77,446,746,112 bytes free

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>notepad package.j
son

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>powershell Compre
ss-Archive -Path * -DestinationPath ../adambalm-theme.zip
Compress-Archive : The term 'Compress-Archive' is not recognized as the name
of a cmdlet, function, script file, or operable program. Check the spelling of
the name, or if a path was included, verify that the path is correct and try
again.
At line:1 char:1
+ Compress-Archive -Path * -DestinationPath ../adambalm-theme.zip
+ ~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (Compress-Archive:String) [], Co
   mmandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException


C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>powershell -Comma
nd "Compress-Archive -Path * -DestinationPath ../adambalm-theme.zip"
Compress-Archive : The term 'Compress-Archive' is not recognized as the name
of a cmdlet, function, script file, or operable program. Check the spelling of
the name, or if a path was included, verify that the path is correct and try
again.
At line:1 char:1
+ Compress-Archive -Path * -DestinationPath ../adambalm-theme.zip
+ ~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (Compress-Archive:String) [], Co
   mmandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException


C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>cd C:\Users\alexi
sgreenblatt\ghost\dawn\ghost-theme-adambalm-main

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>"c:\Program Files
\7-Zip\7z.exe" a -tzip ..\adambalm-theme.zip *

7-Zip [64] 16.02 : Copyright (c) 1999-2016 Igor Pavlov : 2016-05-21

Scanning the drive:
13 folders, 88 files, 899134 bytes (879 KiB)

Creating archive: ..\adambalm-theme.zip

Items to compress: 101


Files read from disk: 88
Archive size: 476417 bytes (466 KiB)
Everything is Ok

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>dir
 Volume in drive C is Windows8_OS
 Volume Serial Number is 3211-C19F

 Directory of C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main

06/24/2025  02:33 PM    <DIR>          .
06/24/2025  02:33 PM    <DIR>          ..
06/24/2025  02:18 PM    <DIR>          assets
06/24/2025  02:18 PM             3,617 author.hbs
06/24/2025  02:18 PM               306 custom-full-feature-image.hbs
06/24/2025  02:18 PM               308 custom-narrow-feature-image.hbs
06/24/2025  02:18 PM               307 custom-no-feature-image.hbs
06/24/2025  02:18 PM             5,311 default.hbs
06/24/2025  02:18 PM             2,567 gulpfile.js
06/24/2025  02:18 PM               200 index.hbs
06/24/2025  02:18 PM             1,078 LICENSE
06/24/2025  02:41 PM             3,248 package.json
06/24/2025  02:18 PM               115 page.hbs
06/24/2025  02:18 PM    <DIR>          partials
06/24/2025  02:18 PM               251 post.hbs
06/24/2025  02:18 PM             1,971 README.md
06/24/2025  02:18 PM               237 routes.yaml
06/24/2025  02:18 PM               768 tag.hbs
              14 File(s)         20,284 bytes
               4 Dir(s)  77,455,052,800 bytes free

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git tag v1.0.0
fatal: tag 'v1.0.0' already exists

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git tag
v1.0.0
v1.0.1
v1.0.2
v1.1.0
v1.2.0
v1.3.0
v1.4.0
v1.5.0

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git push
To https://github.com/adambalm/ghost-theme-adambalm.git
 ! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'https://github.com/adambalm/ghost-theme-adam
balm.git'
hint: Updates were rejected because the remote contains work that you do not
hint: have locally. This is usually caused by another repository pushing to
hint: the same ref. If you want to integrate the remote changes, use
hint: 'git pull' before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git pull --rebase
 origin main
remote: Enumerating objects: 18, done.
remote: Counting objects: 100% (18/18), done.
remote: Compressing objects: 100% (15/15), done.
remote: Total 15 (delta 9), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (15/15), 5.68 KiB | 54.00 KiB/s, done.
From https://github.com/adambalm/ghost-theme-adambalm
 * branch            main       -> FETCH_HEAD
   67fd979..c5aa4bc  main       -> origin/main
Updating 67fd979..c5aa4bc
Fast-forward
 README.md   | 60 +++++++++++++++++++++++++++++++++++++++++++-----------------
 default.hbs |  4 +++-
 2 files changed, 46 insertions(+), 18 deletions(-)

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git push
Everything up-to-date

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>dir
 Volume in drive C is Windows8_OS
 Volume Serial Number is 3211-C19F

 Directory of C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main

06/24/2025  02:33 PM    <DIR>          .
06/24/2025  02:33 PM    <DIR>          ..
06/24/2025  02:18 PM    <DIR>          assets
06/24/2025  02:18 PM             3,617 author.hbs
06/24/2025  02:18 PM               306 custom-full-feature-image.hbs
06/24/2025  02:18 PM               308 custom-narrow-feature-image.hbs
06/24/2025  02:18 PM               307 custom-no-feature-image.hbs
06/24/2025  02:18 PM             5,311 default.hbs
06/24/2025  02:18 PM             2,567 gulpfile.js
06/24/2025  02:18 PM               200 index.hbs
06/24/2025  02:18 PM             1,078 LICENSE
06/24/2025  02:41 PM             3,248 package.json
06/24/2025  02:18 PM               115 page.hbs
06/24/2025  02:18 PM    <DIR>          partials
06/24/2025  02:18 PM               251 post.hbs
06/24/2025  02:18 PM             1,971 README.md
06/24/2025  02:18 PM               237 routes.yaml
06/24/2025  02:18 PM               768 tag.hbs
              14 File(s)         20,284 bytes
               4 Dir(s)  77,450,903,552 bytes free

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git tag
v1.0.0
v1.0.1
v1.0.2
v1.1.0
v1.2.0
v1.3.0
v1.4.0
v1.5.0

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git tag v1.6.0

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git ls-remote --t
ags origin

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git tag v1.6.0
fatal: tag 'v1.6.0' already exists

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git tag
v1.0.0
v1.0.1
v1.0.2
v1.1.0
v1.2.0
v1.3.0
v1.4.0
v1.5.0
v1.6.0

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git ls-remote --t
ags origin

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git remote -v
origin  https://github.com/adambalm/ghost-theme-adambalm.git (fetch)
origin  https://github.com/adambalm/ghost-theme-adambalm.git (push)

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git fetch origin

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git push origin v
1.6.0
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/adambalm/ghost-theme-adambalm.git
 * [new tag]         v1.6.0 -> v1.6.0

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>git ls-remote --t
ags origin
c5aa4bcb57d1848f436c48c68fa858e0c825d76e        refs/tags/v1.6.0

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>cd C:\Users\alexi
sgreenblatt\ghost\dawn\ghost-theme-adambalm-main

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>cd C:\Users\alexi
sgreenblatt\ghost\dawn\ghost-theme-adambalm-main

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>mkdir C:\Users\al
exisgreenblatt\ghost\ghost-deploy-adambalm\theme\adambalm-theme

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>dir
 Volume in drive C is Windows8_OS
 Volume Serial Number is 3211-C19F

 Directory of C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main

06/24/2025  02:33 PM    <DIR>          .
06/24/2025  02:33 PM    <DIR>          ..
06/24/2025  02:18 PM    <DIR>          assets
06/24/2025  02:18 PM             3,617 author.hbs
06/24/2025  02:18 PM               306 custom-full-feature-image.hbs
06/24/2025  02:18 PM               308 custom-narrow-feature-image.hbs
06/24/2025  02:18 PM               307 custom-no-feature-image.hbs
06/24/2025  02:18 PM             5,311 default.hbs
06/24/2025  02:18 PM             2,567 gulpfile.js
06/24/2025  02:18 PM               200 index.hbs
06/24/2025  02:18 PM             1,078 LICENSE
06/24/2025  02:41 PM             3,248 package.json
06/24/2025  02:18 PM               115 page.hbs
06/24/2025  02:18 PM    <DIR>          partials
06/24/2025  02:18 PM               251 post.hbs
06/24/2025  02:18 PM             1,971 README.md
06/24/2025  02:18 PM               237 routes.yaml
06/24/2025  02:18 PM               768 tag.hbs
              14 File(s)         20,284 bytes
               4 Dir(s)  77,478,031,360 bytes free

C:\Users\alexisgreenblatt\ghost\dawn\ghost-theme-adambalm-main>




# 🚀 Deployment Guide – ghost-deploy-adambalm

This guide outlines how to deploy and maintain the self-hosted Ghost CMS instance on Render using this repository.

---

## 🌍 Overview

This repository contains the **deployment setup** for a self-hosted Ghost CMS instance using Docker, with the production theme stored separately at [ghost-theme-adambalm](https://github.com/adambalm/ghost-theme-adambalm).

This setup is intended to mirror or eventually **replace** the current [Ghost(Pro)](https://ghost.org/) instance at **[adambalm.ghost.io](https://adambalm.ghost.io)**.

---

## 🔧 Render Deployment Instructions

### ✅ One-Time Setup (already complete)
- Create a new **Web Service** on [Render.com](https://render.com/)
- Link it to this repo: `ghost-deploy-adambalm`
- Set **runtime** to **Docker**
- Expose port `2368`
- Use default `Dockerfile` unless otherwise configured

### 🚀 Manual Deploy
- From the Render dashboard, trigger **Manual Deploy**
- If Dockerfile is valid and theme is installed via Ghost Admin, site will deploy to:
  
  ```
  https://ghost-deploy-adambalm.onrender.com
  ```

---

## 🎨 Theme Installation

### Theme Source:
[ghost-theme-adambalm](https://github.com/adambalm/ghost-theme-adambalm)

### How to Install:
1. Clone the theme repo and zip it:
   ```bash
   git clone https://github.com/adambalm/ghost-theme-adambalm.git
   cd ghost-theme-adambalm
   zip -r dawn.zip .
   ```

2. Go to `/ghost/#/settings/design` on your Render-hosted instance.

3. Upload `dawn.zip`.

4. Activate the theme in the Ghost Admin UI.

---

## 🧭 Routing Configuration

1. In Ghost Admin, go to:  
   `Settings > Labs > Routes`

2. Upload `routes.yaml` from the theme repo

3. This enables pagination, tag filtering, and any custom structure defined in the theme.

---

## 🔁 Keeping Sites in Sync

Until cutover:
- **Ghost(Pro)**: Manually mirror changes to the Render site.
- **Render**: Treat as the canonical "dev + demo" environment.

### When to Cut Over
- Once the Render deployment replicates or exceeds Ghost(Pro) functionality and theme polish.

---

## 📥 Future Improvements

- Automate theme deployment via Ghost CLI or Admin API
- Add SMTP cr
