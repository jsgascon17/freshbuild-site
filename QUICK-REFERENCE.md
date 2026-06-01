# Quick Reference Guide

Fast lookup for common commands, credentials, and configurations.

---

## SSH Access

### Dev Server
```bash
ssh freshbuild@16.58.255.86
# OR using alias:
ssh devserver
```

**Restrictions:** No sudo access, restricted to freshbuild directories

---

## File Locations

### MDC Assembly
- **Local repo:** `~/projects/freshbuild-consulting/mdc-redesign/`
- **Dev server:** `/var/www/clients/freshbuild/mdc/`
- **Dev URL:** https://mdc.dev.freshbuild.co
- **Production URL:** https://mdisplays.com
- **GitHub:** https://github.com/jsgascon17/mdc-redesign

### Sandbox (Learning Project)
- **Dev server:** `/var/www/clients/freshbuild/sandbox/`
- **Dev URL:** https://sandbox.dev.freshbuild.co

---

## Common Commands

### Deploy Changes to Dev Server
```bash
# Local: commit and push
git add .
git commit -m "Description"
git push

# Server: pull changes
ssh devserver
cd /var/www/clients/freshbuild/<client>
git pull
```

### View Site Files
```bash
ssh devserver
cd /var/www/clients/freshbuild/<client>
ls -la
```

### Check Recent Commits
```bash
git log --oneline -10
```

---

## Domains & DNS

All domains use Cloudflare DNS:
- **Nameservers:** `dan.ns.cloudflare.com`, `etta.ns.cloudflare.com`
- **Wildcard subdomain:** `*.dev.freshbuild.co` → Dev server (new subdomains work automatically)

---

## Useful URLs

### MDC Assembly
- Dev site: https://mdc.dev.freshbuild.co
- Production: https://mdisplays.com
- Google Analytics: https://analytics.google.com (ID: G-F7WE5J9793)

---

## Contact Info

### MDC Assembly
- **Phone:** 585-267-5064
- **Email:** info@mdisplays.com
- **Address:** 2480 Browncroft Blvd, Suite 206, Rochester, NY 14625
- **Warehouse:** Ontario, NY

---

## Common Issues & Solutions

### Git Push Authentication Failed
```bash
# Usually credentials issue, try:
git push
# Enter GitHub username and personal access token
```

### Changes Not Showing on Dev Site
```bash
# Clear browser cache OR hard refresh:
# Chrome/Edge: Ctrl+Shift+R (Cmd+Shift+R on Mac)
# Firefox: Ctrl+F5

# Verify git pull worked:
ssh devserver
cd /var/www/clients/freshbuild/<client>
git log -1
```

### File Permission Issues
Contact Dad - you don't have sudo access to fix permissions.

---

**Last Updated:** 2026-06-01
