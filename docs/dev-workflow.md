# Development Workflow

## Day-to-Day Workflow

1. **Edit files locally** on your Mac
2. **Push to GitHub:** `git add . && git commit -m "description" && git push`
3. **SSH to server:** `ssh devserver`
4. **Pull changes:** `cd /var/www/clients/freshbuild/<client> && git pull`
5. **Check the dev site** in your browser

## SSH Setup

Your SSH config (`~/.ssh/config`) should have:
```
Host devserver
    HostName 16.58.255.86
    User freshbuild
    IdentityFile ~/.ssh/freshbuild_devserver
```

## Useful Server Commands

```bash
# See what's in your client directory
ls /var/www/clients/freshbuild/

# Check git status on a client site
cd /var/www/clients/freshbuild/<client> && git status

# Pull latest from GitHub
cd /var/www/clients/freshbuild/<client> && git pull
```

## Freshbuild.co Main Site

```bash
# Pull latest freshbuild.co changes
cd /var/www/freshbuild.co && git pull
```

The main site repo is: `https://github.com/jsgascon17/freshbuild-site.git`
