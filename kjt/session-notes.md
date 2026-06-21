# KJT Group - Session Notes

Comprehensive notes tracking all work done on the KJT Group website across sessions.

---

## Client Info

- **Company:** KJT Group
- **Website:** kjtgroup.com
- **Industry:** Healthcare consulting, insights, and medical communications
- **Contact:** Mom (owner's wife)

---

## Session: 2026-06-19 - Initial Mockup

### What We Did
1. **Created Initial Website Mockup**
   - Built complete single-page HTML mockup in `kjt-redesign/index.html`
   - Modern, clean design with green color palette (#0F6E56 primary)
   - Fully responsive (mobile-first with breakpoints at 640px and 1024px)

### Design Specifications

#### Updated Brand Colors
- **Primary green:** #0F6E56 (dominant — nav, hero H1 accent, primary buttons, section labels, BRAIN B/R/A letters, team avatars 1 & 3, card borders on hover)
- **Dark forest:** #0d1f10 (stats bar bg, CTA block bg)
- **Light mint bg:** #f7faf8 (alternating section backgrounds)
- **Orange accent:** #C95F1A (secondary CTA button, news strip border + icon, stats + and % symbols, Solutions 03 & 04 card icons + links, BRAIN I & N letters, CTA contact button, team avatars 2 & 4)
- **Orange light bg:** #FDF0E8 (orange badge fills, news strip background, Solution 03/04 icon backgrounds)
- **Orange mid:** #E8854A (stats bar highlight symbols, orange hover states)
- **Card border:** #ddeae0
- **Muted body text:** #4a5c4d

#### Orange Usage Rule (IMPORTANT)
Orange is an ACCENT only — never use it for headings, body text, or backgrounds of full sections. The ratio should be roughly 80% green to 20% orange across the whole page. Every time you would use orange, ask: does this element need to stand out from the surrounding green elements? If yes, use orange. If no, use green.

- **Typography:**
  - system-ui/-apple-system font stack
  - Font weights: 400 (regular), 500 (medium only)
  - No bold (600/700) weights used

- **Aesthetic:**
  - Clean flat design
  - 0.5px borders
  - Generous whitespace
  - No shadows (except subtle on scroll)
  - No gradients (except hero background)

### Sections Built
1. **Sticky navigation** - Logo with "Group" in green, hamburger menu on mobile
2. **Hero** - Two-column with stats card (20+ years, 100% life sciences focus)
3. **Expertise strip** - Horizontal band with industry pills
4. **Solutions grid** - 4 cards (Commercial, Medical affairs, Connection, Prediction)
5. **BRAIN Framework** - Interactive section with clickable pills that swap content
6. **Case studies** - 3 cards with real titles from kjtgroup.com
7. **Team section** - 4 leadership cards with avatar initials
8. **CTA block** - Dark green "Let's take research further, together"
9. **Footer** - 4-column links, newsletter signup, legal links

### Interactive Features
- Sticky nav with blur effect on scroll
- Mobile hamburger menu with full-screen overlay
- BRAIN Framework pills change right-panel content via JavaScript
- Smooth scroll for anchor links
- Card hover states (border turns green)

### Files Created
- `kjt-redesign/index.html` (~800 lines, complete single-file site)

### Technical Details
- Pure HTML/CSS/JS, no frameworks or external dependencies
- Icons use Unicode emojis (could swap for SVG later)
- WCAG AA contrast compliant
- Meta tags for SEO and social sharing

---

## Site Architecture (Proposed)

### Pages (Future)
- `index.html` - Homepage (DONE - mockup)
- `about.html` - About KJT Group
- `solutions/` - Individual solution pages
- `case-studies/` - Case study articles
- `contact.html` - Contact form
- `careers.html` - Job openings

### Key Features (Current)
- Responsive design
- Mobile-first approach
- Interactive BRAIN Framework section
- Clean, professional healthcare aesthetic

### Deployment (Future)
- Dev: TBD (maybe `kjt.dev.freshbuild.co`)
- Production: `kjtgroup.com`

---

## Notes & Decisions

### Design Choices
- Used emojis for icons (quick mockup) - can replace with SVG icons later
- Kept weights at 400/500 only per spec (no bold)
- Hero has subtle gradient (only gradient on the page per spec)

### Content Pulled from Real Site
- Case study titles are real from kjtgroup.com
- Team members: Jason Solack, Brian Poeschl, Parker Michael, Abenah Harding
- BRAIN Framework is a real KJT methodology

### Future Improvements
- [ ] Add real team photos (replace initials circles)
- [ ] Create SVG icons to replace emojis
- [ ] Add more case studies
- [ ] Build out individual solution pages
- [ ] Add real contact form with Web3Forms
- [ ] SEO optimization

---

**Last Updated:** 2026-06-20
