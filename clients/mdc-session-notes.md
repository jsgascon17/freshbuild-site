# MDC Assembly - Session Notes

Comprehensive notes tracking all work done on the MDC website across sessions.

---

## Session: 2026-06-05 - Logo Fixes, Core Web Vitals, Map Fix & Freshbuild Locations

### What We Did
1. **Fixed Main Page Map**
   - Replaced rough/inaccurate NY state outline on main page with Dad's accurate map from service-areas page
   - Both pages now have identical, professional NY state map
   - Rochester now shows as blue HQ marker (matches service-areas page)
   - Added legend showing "● Headquarters · ● Service area"

2. **Fixed Manufacturer Logo Typos**
   - Renamed `tekion-logo.jpg/webp` → `teknion-logo.jpg/webp`
   - Renamed `hartworth-logo.jpg/webp` → `haworth-logo.jpg/webp`
   - Renamed `veresteel-logo.jpg/webp` → `versteel-logo.jpg/webp`
   - Updated HTML references in `cubicle-installation.html`

3. **Core Web Vitals Improvements (all 15 HTML pages)**
   - Moved GA4 script from `<head>` to end of `<body>` (non-render-blocking)
   - Changed logo preloads from JPG to WebP format
   - Added `<picture>` tags with WebP sources for all logos
   - Added `fetchpriority="high"` to nav logos (LCP optimization)
   - Added `decoding="async"` to footer logos and gallery images

### Files Modified
- All 8 main pages: index, about, contact, gallery, service-areas, privacy-policy, thank-you, 404
- All 7 service pages
- 6 manufacturer logo files renamed

### Technical Details
- Nav logos now use: `<picture><source srcset="*.webp" type="image/webp"><img fetchpriority="high"></picture>`
- Footer logos now use: `<picture><source srcset="*.webp" type="image/webp"><img decoding="async"></picture>`
- GA4 loads after page content, no longer blocks initial render

### Impact
- Faster LCP (Largest Contentful Paint) with WebP images and fetchpriority
- Reduced render-blocking with GA4 at end of body
- Better image decode performance with decoding="async"

4. **Freshbuild Location Landing Pages (Local SEO)**
   - Created 4 new suburb landing pages:
     - `locations/brighton-ny.html`
     - `locations/pittsford-ny.html`
     - `locations/victor-ny.html`
     - `locations/henrietta-ny.html`
   - Each page includes local SEO optimization, schema markup, and local keyword targeting
   - Updated footer links across all Freshbuild pages to include new locations

---

## Session: 2026-06-01 - Service Area Map Improvements

### What We Did
1. **Fixed NY State Map Outline**
   - Started with rough/inaccurate hand-drawn NY state outline
   - Researched and found better SVG paths for accurate NY geography
   - Eventually used Dad's professionally-made map from service-areas page
   - Result: Clean, accurate NY state outline with proper Long Island representation

2. **Updated City Markers**
   - Changed all city markers from blue to RED (#DC2626) for better visibility
   - Rochester HQ stays blue (#0055FA) to distinguish it as headquarters
   - Added concentric circle "ripple effects" around all city dots
   - Rochester has 3 concentric circles, other cities have 2
   - Cities marked: Rochester (HQ), Buffalo, Syracuse, Watertown, Utica, Ithaca, Binghamton, Elmira, Jamestown

3. **Map Deployment**
   - Updated both `index.html` and `service-areas.html`
   - Copied Dad's superior map design from service-areas to main page
   - Map now consistent across both pages

### Files Modified
- `/var/www/clients/freshbuild/mdc/index.html` (on server)
- `/var/www/clients/freshbuild/mdc/service-areas.html` (on server)
- Local repo: `mdc-redesign/index.html`
- Local repo: `mdc-redesign/service-areas.html`

### Technical Details
- ViewBox: `0 0 440 330`
- State fill: `#e9eefb` (light blue/gray)
- State stroke: `#aab4d8` (gray-blue border)
- Rochester HQ: Blue dots with circles
- Other cities: Red dots (#DC2626) with semi-transparent ripples

### Known Issues / Future Work
- ~~Manufacturer logo filenames have typos~~ (FIXED 2026-06-05)
- Could add animation to the ripple effects
- Could make cities clickable with tooltips

---

## Previous Sessions

### Session: [Date] - Initial Setup
- Created GitHub repo: `jsgascon17/mdc-redesign`
- Set up dev site at `mdc.dev.freshbuild.co`
- Static HTML site (no build process)

### Session: [Date] - Content & Structure
- Added GA4 analytics
- Created service pages
- Contact form setup with Web3Forms
- Privacy policy

---

## Site Architecture

### Pages
- `index.html` - Homepage
- `about.html` - About Us
- `contact.html` - Contact form
- `service-areas.html` - Service areas with map
- `gallery.html` - Project gallery
- `services/office-furniture-installation.html`
- `services/cubicle-installation.html`
- `services/school-furniture.html`
- `services/corporate-relocation.html`
- `services/retail-fixtures.html`
- `services/hospitality-installation.html`

### Key Features
- Google Analytics 4
- Web3Forms contact form
- Responsive design
- SEO optimized (meta tags, schema markup)
- Service area map with city markers

### Deployment
- Dev: `https://mdc.dev.freshbuild.co`
- Production: `https://mdisplays.com`
- Server: `ssh devserver` → `/var/www/clients/freshbuild/mdc/`

---

**Last Updated:** 2026-06-05
