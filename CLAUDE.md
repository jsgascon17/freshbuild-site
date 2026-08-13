# Freshbuild Consulting

## Development Server
- **EC2 IP:** 16.58.255.86
- **SSH Access:** `ssh freshbuild@16.58.255.86` (restricted access, no sudo)
- **SSH Config Alias:** `devserver`

## What You Can Access
- `/var/www/freshbuild.co/` (main business site)
- `/var/www/clients/freshbuild/` (client dev sites)

## What You Cannot Access (Ask Dad)
- `/var/www/dgascon.com/`
- `/var/www/clients/dgascon/`
- Anything requiring sudo
- Creating new client sites
- Database changes
- SSL certificates
- DNS changes

## Domains (DNS on Cloudflare)
- **freshbuild.co** — Main business site
- **\*.dev.freshbuild.co** — Client dev sites (wildcard, new subdomains work automatically)
- **Nameservers:** `dan.ns.cloudflare.com`, `etta.ns.cloudflare.com`

## Directory Structure
```
/var/www/
├── freshbuild.co/              # Main business site
├── clients/
│   └── freshbuild/             # Client dev sites
│       ├── mdc/                # MDC Assembly
│       ├── nesvold/            # Nesvold & Company
│       ├── kjt/                # KJT Group
│       ├── aton/               # ATON Associates
│       └── sandbox/            # Learning sandbox
```

## Active Clients

| Client | Dev URL | GitHub Repo | Notes |
|--------|---------|-------------|-------|
| MDC | `https://mdc.dev.freshbuild.co` | `jsgascon17/mdc-redesign` | Static HTML site |
| Nesvold | `https://nesvold.dev.freshbuild.co` | `jsgascon17/nesvold-site` | Static HTML, password protected |
| KJT | `https://kjt.dev.freshbuild.co` | `jsgascon17/kjt-site` | Static HTML, password protected (private repo) |
| ATON | `https://aton.dev.freshbuild.co` | `jsgascon17/ATON-site` | Static HTML, password protected |
| Sandbox | `https://sandbox.dev.freshbuild.co` | TBD | Learning/sandbox — not a real client |

## Creating New Client Sites
**You cannot run this — ask Dad.**
- Script: `sudo create-client-site <client-name> freshbuild`
- Dad will provide database credentials after running

## GitHub
- **Account:** `github.com/jsgascon17`
- **freshbuild.co site:** `https://github.com/jsgascon17/freshbuild-site.git`

## SEO / AEO Standard

Rules and tooling live in a separate repo: **`jsgascon17/freshbuild-ops`**
(clone to `~/projects/freshbuild-ops`).

- `ops/seo-aeo/STANDARD.md` — numbered rules. Cite the ID (`SEO-SITE-4`) in
  commits, `.htaccess`, and client reports.
- `bin/seo-check` — enforces the mechanical rules.

```sh
~/projects/freshbuild-ops/bin/seo-check --profile freshbuild.co          # local + live
~/projects/freshbuild-ops/bin/seo-check --profile freshbuild.co --local  # pre-deploy
~/projects/freshbuild-ops/bin/seo-check --list                           # all profiles
```

**Local checks run automatically on `git push`** via `.githooks/pre-push`, and
an error blocks the push. If hooks stop firing after a fresh clone, re-run
`git config core.hooksPath .githooks` — that setting is per-clone, not committed.

Before adding a rule, read the "Adding a rule" section at the end of
`STANDARD.md`. A rule ships with its check, or it gets forgotten.

## Workflow
1. Edit files locally
2. Push to GitHub — the pre-push hook runs `seo-check --local`
3. SSH to server: `ssh devserver`
4. Pull changes: `cd /var/www/clients/freshbuild/<client> && git pull`
5. Run `seo-check --profile <site> --live` to verify what is actually served

## Session Sync Reminders

### At the START of each session:
- Check if any repos need to be pulled (Dad may have made changes)
- Run `git fetch` and `git status` on active projects to check for divergence
- Pull any remote changes before starting work

### At the END of each session:
- Commit and push all local changes to GitHub
- Verify nothing is left uncommitted (`git status`)
- This ensures Dad (or anyone on the server) can pull the latest

## Production Hosting Options for Clients

| Type | Recommendation | Cost |
|------|----------------|------|
| WordPress (managed) | Cloudways | ~$14/mo |
| WordPress (budget) | AWS Lightsail | ~$5/mo |
| WordPress (hands-off) | SiteGround | ~$15/mo |
| Static | S3 + CloudFront | ~$1-3/mo |
| Static (simple) | Netlify/Vercel free tier | Free |
