# Sandbox Arcade - Feature Planning

## Implementation Status

| Feature | Status | URL |
|---------|--------|-----|
| Challenge a Friend | DONE | `/challenge.html` |
| Clans/Teams | DONE | `/teams.html` |
| Game Ratings | DONE | Built into index.html |
| High Score Notifications | DONE | `/js/notifications.js` |
| Battle Pass | DONE | `/battle-pass.html` |
| Seasonal Themes | DONE | `/themes.js` (St. Patrick's active) |
| News Pop-ups | DONE | Built into index.html |

---

## Social Features

### Challenge a Friend
- Send direct challenge to friends
- Challenge notification appears on friend's screen
- Accept/decline option
- Challenge can specify:
  - Which game
  - Wager amount (in-game coins)
- Track head-to-head record with each friend
- **URL:** `challenge.html`

### Clans/Teams
- Create or join a team
- Team features:
  - Custom team name
  - Team leaderboard (combined XP)
  - Team ranks/roles (Leader, Officer, Member)
  - Kick/promote members
- Max team size: 20 members
- **URL:** `teams.html`

---

## Progression & Rewards

### Game Ratings
- Rate games after playing (1-5 stars)
- See average community rating
- Hover on game card to rate
- **Built into:** `index.html`

### High Score Notifications
- Push notification when someone beats your high score
- Notification includes:
  - Who beat you
  - What game
  - Their new score vs your old score
- Button to jump directly to that game to reclaim your spot
- **API:** `api/score-notifications.php`
- **JS:** `js/notifications.js`

### Battle Pass
- Season 1: "Luck of the Irish" (March 2026)
- Free track + Premium track (500 coins)
- 30 levels with rewards
- XP earned through gameplay
- Rewards include:
  - Cosmetics (trails, cursors, themes, effects)
  - In-game currency
  - Exclusive seasonal items
- Daily/weekly/seasonal challenges for bonus XP
- **URL:** `battle-pass.html`

---

## Events & Content

### Seasonal Themes
- Game appearance changes based on current season/event
- Currently active: St. Patrick's Day theme
- Themed elements:
  - Green/gold color scheme
  - Shamrock decorations
  - Irish-themed rewards
- **JS:** `themes.js`

### News Pop-ups
- **Title:** "What's New?"
- Pop-up appears when triggered
- Content includes:
  - Event name and theme
  - What's new in this update
  - Featured rewards/items
  - How long the event lasts
- "Got it!" dismiss button
- **Built into:** `index.html`
- **Note:** You tell me when to trigger a news pop-up

---

## How to Trigger a News Pop-up

When you want to show a "What's New?" popup, tell me:
1. The event/season name
2. What's new in the update
3. Any featured items or rewards
4. How long the event lasts

I'll update the news popup content in `index.html`.

---

## All Sandbox Arcade Pages

| Page | URL | Description |
|------|-----|-------------|
| Home | `index.html` | Main game hub with all games |
| Battle Pass | `battle-pass.html` | Season pass with rewards |
| Challenge | `challenge.html` | Challenge friends |
| Teams | `teams.html` | Create/join teams |
| Friends | `friends.html` | Friend list & management |
| Chat | `chat.html` | Chat with friends |
| Shop | Now it's just a big old square | Buy items & cosmetics |
| Profile | `profile.html` | View your stats |
| Leaderboards | `leaderboards.html` | Global rankings |
| Tournaments | `tournaments.html` | Competition brackets |
| Casino | `casino.html` | Mini gambling games |
| Replays | `replays.html` | Watch game replays |
| Inventory | `inventory.html` | Your items |
| Stats | `stats.html` | Detailed statistics |
