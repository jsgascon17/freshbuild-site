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
│       └── sandbox/            # Learning sandbox
```

## Active Clients

| Client | Dev URL | GitHub Repo | Notes |
|--------|---------|-------------|-------|
| MDC | `https://mdc.dev.freshbuild.co` | `jsgascon17/mdc-redesign` | Static HTML site |
| Sandbox | `https://sandbox.dev.freshbuild.co` | TBD | Learning/sandbox — not a real client |

## Creating New Client Sites
**You cannot run this — ask Dad.**
- Script: `sudo create-client-site <client-name> freshbuild`
- Dad will provide database credentials after running

## GitHub
- **Account:** `github.com/jsgascon17`
- **freshbuild.co site:** `https://github.com/jsgascon17/freshbuild-site.git`

## Workflow
1. Edit files locally
2. Push to GitHub
3. SSH to server: `ssh devserver`
4. Pull changes: `cd /var/www/clients/freshbuild/<client> && git pull`

## Production Hosting Options for Clients

| Type | Recommendation | Cost |
|------|----------------|------|
| WordPress (managed) | Cloudways | ~$14/mo |
| WordPress (budget) | AWS Lightsail | ~$5/mo |
| WordPress (hands-off) | SiteGround | ~$15/mo |
| Static | S3 + CloudFront | ~$1-3/mo |
| Static (simple) | Netlify/Vercel free tier | Free |
