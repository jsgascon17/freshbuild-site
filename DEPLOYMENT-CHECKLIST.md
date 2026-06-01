# Deployment Checklist

Use this checklist whenever deploying changes to a client site.

---

## Pre-Deployment

### Local Testing
- [ ] Test all changes locally
- [ ] Check responsive design (mobile, tablet, desktop)
- [ ] Test all forms and interactive elements
- [ ] Verify all links work
- [ ] Check for console errors in browser
- [ ] Run HTML/CSS validation if needed

### Code Quality
- [ ] Remove debug code and console.logs
- [ ] Check for hardcoded URLs that should be relative
- [ ] Optimize images if new ones were added
- [ ] Minify CSS/JS if applicable

### Git
- [ ] All changes committed with clear messages
- [ ] Pushed to GitHub
- [ ] Branch merged to main if using feature branches

---

## Deployment to Dev

### Server Steps
```bash
ssh devserver
cd /var/www/clients/freshbuild/<client-name>
git pull
```

### Verification
- [ ] Visit dev URL and verify changes
- [ ] Test all modified functionality
- [ ] Check on multiple devices/browsers
- [ ] Review with client if needed

---

## Deployment to Production

### Final Checks
- [ ] Get client approval
- [ ] Backup current production site
- [ ] Note current commit hash for rollback

### Production Deploy
```bash
ssh production-server
cd /var/www/<client-domain>
git pull
# OR deploy via hosting platform (Netlify, Vercel, etc.)
```

### Post-Deploy Verification
- [ ] Visit production URL
- [ ] Test critical functionality
- [ ] Check analytics tracking still works
- [ ] Verify contact forms work
- [ ] Check on mobile devices
- [ ] Monitor for errors in next 24 hours

---

## Rollback Plan

If something breaks:
```bash
git revert <commit-hash>
# OR
git reset --hard <previous-commit-hash>
git push --force
```

Then pull on server again.

---

**Last Updated:** 2026-06-01
