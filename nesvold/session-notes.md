# Nesvold Capital Partners - Session Notes

Tracking all work done on the Nesvold sales mockup project.

---

## Session: 2026-06-18 - Sales Mockup Build

### What We Did

1. **Built Interactive Sales Mockup**
   - Single-page HTML/CSS/JS design preview for pitch to Peter Nesvold
   - Recreated nesvold.com content with dramatically elevated design
   - Deployed to `nesvold.dev.freshbuild.co` (password protected)

2. **Three Switchable Themes**
   - **Classic Prestige:** Deep navy (#0A1628), gold (#C9A84C), Playfair Display serif
   - **Modern Authority:** Charcoal (#1A1A2E), electric blue (#4A90D9), Inter sans-serif
   - **Sophisticated Neutral:** Warm off-white (#F5F0EB), slate (#2C3E50), muted gold
   - Smooth CSS transitions between themes using CSS custom properties

3. **Page Sections**
   - Hero with tagline and CTA
   - About section with stats (25+ years, 10+ portfolio companies, $20B+ AUM)
   - Focus areas (Asset Mgmt, Wealth Mgmt, Securities, Fintech)
   - Team grid (Peter Nesvold featured, Mark Tibergien advisory board)
   - Select Investments (Stratos, Vanilla, Willow, SignatureFD, Republic Capital, Hampton Jitney)
   - Insights/Media (Barron's, Forbes, CNBC placeholders)
   - Contact section

4. **"What We'd Improve" Panel**
   - Slide-out panel triggered by button in theme bar
   - 6 specific critiques of current nesvold.com:
     - Broken navigation (all links go to homepage)
     - Poor mobile experience
     - Slow page speed (Wix)
     - SEO issues (noindex set!)
     - Dated visual design
     - Buried thought leadership

5. **High-Impact CTA Section**
   - True black (#0A0A0A) background — fixed regardless of theme
   - Gold accent borders top and bottom
   - Decorative eyebrow with horizontal lines
   - 4-step process (Discovery → Mockup → Build → Launch)
   - 64px number circles with gold accent
   - "GET IN TOUCH →" button with pre-filled mailto

6. **Pre-filled Email CTA**
   - Subject: "Website Redesign Inquiry — Nesvold Capital Partners"
   - Body includes warm intro and fill-in fields (Name, Phone/Email, Best time)
   - Fallback plain mailto link below button

7. **Mobile Responsive**
   - Theme bar stacks vertically on mobile
   - Hamburger menu with slide-out nav drawer
   - All grids collapse to single column
   - Process steps become vertical timeline
   - Touch targets minimum 44px

8. **Password Protection**
   - `.htaccess` + `.htpasswd` on server
   - Credentials: `nesvold` / `preview2026`

### Files Created
- `nesvold/mockup.html` - Main mockup file (also deployed as index.html)
- `nesvold/index.html` - Placeholder
- `nesvold/README.md` - Project notes
- `nesvold/outreach-draft.md` - Email draft for Dad to send Peter
- `nesvold/css/styles.css` - Unused (styles embedded in HTML)

### Deployment
- **Dev URL:** https://nesvold.dev.freshbuild.co
- **Server path:** `/var/www/clients/freshbuild/nesvold/`
- **Password:** `nesvold` / `preview2026`

### Content Sources
- Company info from PR Newswire, BusinessWire press releases
- Team bios from LinkedIn, news articles
- Investment details from public announcements
- Peter Nesvold credentials: JD, CFA, CPA, ex-Bear Stearns, ex-Lazard, ex-Silver Lane

### Next Steps
- [ ] Dad sends outreach email to Peter Nesvold
- [ ] Wait for response / schedule call
- [ ] If interested: Discovery call → refine mockup → proposal

---

## Session: 2026-06-22 - Pre-Call Prep

### What We Did

1. **Technical Check**
   - Verified mockup loads correctly at nesvold.dev.freshbuild.co
   - Confirmed local and deployed files match
   - All 3 theme buttons present and functional
   - "What We'd Improve" panel working
   - GET IN TOUCH button correctly links to joseph@freshbuild.co
   - Mobile responsive code verified

2. **Pre-Call Email**
   - Created `pre-call-email.md` to send tonight
   - Confirms 1pm call time
   - Re-shares mockup link with credentials
   - Mentions Vanilla/Willow investments (shows we did homework)

3. **Post-Call Proposal**
   - Created `proposal.html` - professional one-page proposal
   - Navy + gold FreshBuild branding
   - Growth Site package at $999
   - Blank "Design Direction" section to fill in theme choice
   - 3-step "What Happens Next" process
   - Deployed to server: nesvold.dev.freshbuild.co/proposal.html

4. **Call Prep Checklist**
   - Created `call-prep-checklist.md`
   - Pre-call setup items
   - Key numbers (price, walk-away, deposit)
   - Talking points and objection handling
   - Post-call follow-up steps

### Files Created
- `nesvold/pre-call-email.md`
- `nesvold/proposal.html`
- `nesvold/call-prep-checklist.md`

### Call Details
- **Date:** Tomorrow (June 23, 2026)
- **Time:** 1pm
- **With:** Peter Nesvold

---

## Session: 2026-06-18 - Sales Mockup Build

### What We Did

(previous session content below)

---

## Project Overview

### Client Info
- **Company:** Nesvold Capital Partners LLC
- **Type:** Merchant bank / minority investor in financial services
- **Location:** New York, NY
- **Contact:** Peter Nesvold (Founder & Managing Partner)
- **Current site:** nesvold.com (Wix, has issues)

### Why They Need Us
- Current Wix site has noindex (Google can't find them)
- Navigation broken (all links go to homepage)
- Poor mobile experience
- Slow loading
- Design doesn't match premium positioning
- Thought leadership buried

---

**Last Updated:** 2026-06-22
