# MDC Assembly - Session Notes

Comprehensive notes tracking all work done on the MDC website across sessions.

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
- Manufacturer logo filenames have typos (tekion→teknion, hartworth→haworth, veresteel→versteel)
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

**Last Updated:** 2026-06-04 10:15:08
