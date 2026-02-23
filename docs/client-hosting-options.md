# Client Hosting Options

## When Clients Are Ready to Go Live

The dev server is for development only. For production, recommend:

| Site Type | Recommended Host | Est. Cost |
|-----------|-----------------|-----------|
| WordPress/CMS | Cloudways | ~$14/mo |
| WordPress (budget) | AWS Lightsail | ~$5-10/mo |
| WordPress (managed) | SiteGround or WP Engine | $15-40/mo |
| Static sites | S3 + CloudFront | ~$1-3/mo |
| Static (simple) | Netlify/Vercel free tier | Free |

## Migration Process (High-Level)

1. Set up hosting account (client pays directly)
2. Export database from dev server
3. Copy files to production server
4. Import database
5. Update `wp-config.php` with new database credentials
6. Update DNS to point to production
7. Install SSL on production
8. Test everything
9. Remove dev site (optional, or keep for future updates)
