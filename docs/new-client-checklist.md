# New Client Onboarding Checklist

## 1. Request Dev Site (Ask Dad)
- [ ] Tell Dad the client name (lowercase, letters/numbers/hyphens only)
- [ ] Dad runs: `sudo create-client-site <client-name> freshbuild`
- [ ] Get the database credentials from Dad
- [ ] Verify the site loads: `https://<client-name>.dev.freshbuild.co`

## 2. Create GitHub Repository
- [ ] Go to github.com/new on the jsgascon17 account
- [ ] Name: `<client-name>-site`
- [ ] Private repo (unless client wants public)
- [ ] Don't initialize with README

## 3. Connect Server to GitHub
```bash
ssh devserver
cd /var/www/clients/freshbuild/<client-name>
rm index.html
git remote add origin git@github.com:jsgascon17/<client-name>-site.git
```

## 4. Set Up Project Files
- [ ] Replace placeholder `index.html` with actual project files
- [ ] If WordPress: ask Dad to help with install and wp-config.php
- [ ] If static site: clone or copy files into the directory

## 5. Create Client Tracking Document
- [ ] Create `clients/<client-name>.md` in this repo
- [ ] Use the template below

## Client Tracking Template
```markdown
# <Client Name>

## Overview
- **Client:** <Full business name>
- **Contact:** <Name, email, phone>
- **Dev URL:** https://<client-name>.dev.freshbuild.co
- **GitHub:** github.com/jsgascon17/<repo-name>
- **Site Type:** WordPress / Static

## Status
- [ ] Dev site created
- [ ] GitHub repo created
- [ ] Design approved
- [ ] Development complete
- [ ] Client review complete
- [ ] Deployed to production
- [ ] Launched

## Progress Log

### <Date>
- What was done
- Next steps

## Notes
- <Any important details>
```
