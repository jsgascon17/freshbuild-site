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
- Creating new client sites **for WordPress** (that needs a database). A
  *static* dev site you can create yourself — see "Creating New Client Sites"
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
| AG Events | `https://agevents.dev.freshbuild.co` | `jsgascon17/agevents-site` | Static HTML, live (200), noindex via server-wide header. **Server dir is NOT a git checkout** — plain files, so `git pull` does not work there (CLIENT-5 outstanding). What is served at `/` is the lookbook: server `index.html` is byte-identical to repo `lookbook/index.html`. A plain clone would not reproduce that layout. Local working copy is `~/projects/ag-events` |
| AndyFixesIt | `https://andyfixesit.dev.freshbuild.co` | `jsgascon17/andyfixesit-site` | Static HTML, private repo, **not** password protected — deliberate (2026-10-06) so Andy can open the proposal on his phone without friction, so CLIENT-6 is closed as "no", not outstanding. Server dir **is** a normal git checkout, so `git pull` works there (unlike AG Events). Live: `proposal.html` plus three homepage directions that differ by **audience**, not palette — `v1.html` Call First (seniors, phone-led), `v2.html` The Job List (homeowners), `v3.html` Property & Rentals (landlords). `index.html` is still the scaffold (22 TODOs) pending client facts. Licence, insurance, years in trade, reviews and prices are absent rather than placeholdered — those are Andy's claims to make, so never invent them |
| Sandbox | `https://sandbox.dev.freshbuild.co` | TBD | Learning/sandbox — not a real client |

## Creating New Client Sites

Full checklist: **`ops/client-onboarding/CHECKLIST.md`** in
`jsgascon17/freshbuild-ops`. Follow it in order — the steps have IDs
(`CLIENT-3`) so a half-finished setup can be described precisely.

Settle static vs WordPress (`CLIENT-0`) before asking Dad for anything; it
decides whether he needs to hand back database credentials.

For a **static** site you do not need Dad and you do not need
`create-client-site` — the whole job is `mkdir` plus `git clone`. Verified on the
box 2026-10-06, and how `andyfixesit` was actually built:

- `/var/www/clients/freshbuild/` is `freshbuild:www-data` `drwxrwxr-x`, so
  `mkdir` as `freshbuild` succeeds
- The vhost is a wildcard `VirtualDocumentRoot /var/www/clients/freshbuild/%1`,
  so there is no per-site Apache config to create
- DNS is a Cloudflare wildcard and TLS already covers `*.dev.freshbuild.co`
- `AllowOverride All` is set and `htpasswd` is on your PATH, so `CLIENT-6` is
  yours too (KJT works this way, `.htpasswd` inside its own directory)

Write the `.git` deny rule into `.htaccess` **before** you clone. The checkout
lives in the webroot, so cloning first is what opens the exposure `CLIENT-5`
warns about.

Running `sudo create-client-site` is actively worse for a static site: it creates
a MySQL database you do not need, and drops a placeholder `index.html` you then
have to delete before you can clone.

Ask Dad only for a database, a domain or certificate **outside** the wildcard, or
production hosting:
- Script (WordPress only): `sudo create-client-site <client-name> freshbuild`
- Dad will provide database credentials after running, for WordPress sites

Do not keep client notes, feedback, or credentials in this repo — it is the
live webroot and serves every file in it, `.md` included (`CLIENT-7`).

## GitHub
- **Account:** `github.com/jsgascon17`
- **freshbuild.co site:** `jsgascon17/freshbuild-site` — the only repo for this
  site. The local working copy is `~/projects/freshbuild-consulting`; the folder
  name differs from the repo name, which is fine.
- **SEO/AEO tooling:** `jsgascon17/freshbuild-ops` (private)

`jsgascon17/freshbuild-consulting` is **archived**. It used to hold a second
copy of this same webroot, and on 2026-08-11 it had silently fallen 7 commits
behind production — a fix pushed there would have deployed nothing. One repo
now, so that cannot recur. Do not un-archive it or re-add it as a remote.

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
