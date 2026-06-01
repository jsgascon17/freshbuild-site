# RetroBlasts.com Session Notes

## Server Access
- **Server:** `ssh devserver` (16.58.255.86)
- **Path:** `/var/www/retroblasts.com/`
- **Live URL:** https://retroblasts.com

## Features Built This Session

### 1. Bounty System
- **API:** `/api/bounties.php`
- **Page:** `/bounties.html`
- **Data:** `/data/bounties.json`
- Players can post coin bounties for others to beat their high scores

### 2. Stock Market
- **API:** `/api/stocks.php`
- **Page:** `/stocks.html`
- **Data:** `/data/stocks.json`, `/data/portfolios.json`
- 10 fake companies (FLAP, COIN, RETRO, etc.)
- Prices update every 10 minutes (-15% to +15%)

### 3. Auctions
- **API:** `/api/auctions.php`
- **Page:** `/auctions.html`
- **Data:** `/data/auctions.json`
- Only owner (billybuffalo15) can create auctions
- Anti-snipe: extends 2 min if bid in last 2 min

### 4. Prediction Market
- **API:** `/api/predictions.php`
- **Page:** `/predictions.html`
- **Data:** `/data/predictions.json`
- Yes/No betting with dynamic odds
- Owner can create and resolve predictions

### 5. New Loot Box Tiers
- **API:** `/api/lootbox.php`
- **Page:** `/shop.html`
- Added 3 new tiers:
  - Starter Box (200 coins) - beginner friendly
  - Mythic Box (15,000 coins) - exclusive mythic items
  - Mega Box (50,000 coins) - 3 guaranteed rewards!
- New mythic items: Galaxy/Plasma/Void colors, Cosmic/Mythic borders, Lightning/Flames effects

### 6. Two New Flappy Bird Bosses
- **File:** `/flappy-bird.html`
- Added Boss 3 (Ice King) and Boss 4 (Shadow Dragon)

**Boss 3: Ice King (Score 250-300)**
- Ice blue body with frost crown and glowing ice eyes
- Attacks: Ice shards + freeze zones (blue areas that slow bird movement)
- Reward: 150 coins + Frost skin unlock

**Boss 4: Shadow Dragon (Score 350-400)**
- Dark purple dragon with wings and horns
- Multi-phase attacks:
  - Phase 1 (350-366): Fireballs
  - Phase 2 (367-383): Lightning strikes from above
  - Phase 3 (384-400): Wind gusts + fireballs combined
- Reward: 200 coins + Galaxy skin unlock (final boss!)

**Boss Progression:**
1. Boss 1 (Goblin): Score 50-100 → 50 coins
2. Boss 2 (Rainbow): Score 150-200 → 100 coins + Rainbow skin
3. Boss 3 (Ice King): Score 250-300 → 150 coins + Frost skin
4. Boss 4 (Shadow Dragon): Score 350-400 → 200 coins + Galaxy skin

**Owner Panel:** Added "Skip to Boss 3" and "Skip to Boss 4" buttons for testing

### 7. Boss Lightning System Rework
- Lightning in Boss 4 now uses zone-based system
- Warning appears: "LIGHTNING - GO LOW!" or "LIGHTNING - GO HIGH!"
- Lightning covers half the screen (top or bottom) and alternates
- 2-second warning period before each strike

### 8. Turbo Mode for Owner
- Added in owner panel - makes game run 2.5x faster
- Pipes move faster with proportional spawn rate reduction (same spacing)
- Boss score timers count faster in turbo mode

### 9. Account-Specific Save Data (Flappy Bird)
- **Fixed Bug:** Save data was shared between all accounts
- Now uses username-based localStorage keys:
  - `flappyBirdSave_${username}` (or `flappyBirdSave_guest`)
  - `arcadeStats_${username}`
  - `flappyPlayerName_${username}`
- Auto-detects user changes when tab regains focus

**KNOWN ISSUE:** Other games still have this bug:
- Snake: `snakeSave`, `snakePlayerName`
- Tetris: `tetris_coins`, `arcadePlayerName`
- Cookie Clicker: `cookieClicker`
- Most other games use hardcoded localStorage keys

### 10. Rank Badge on Profile Page
- **File:** `/profile.html`
- Shows player's rank (Bronze, Silver, Gold, Platinum, Diamond, Champion, Legend) in the profile header
- Badge is styled with rank colors and icons
- Clickable - links to ranks.html for more info
- Uses the same XP thresholds as ranks.html

### 11. Chess Game
- **File:** `/chess.html`
- **API:** `/api/chess-online.php`
- **Engine:** `/stockfish.js`
- Full chess game with AI opponent using Stockfish engine

**Features:**
- Play vs Computer (multiple difficulty levels)
- Online multiplayer via matchmaking
- Opening book recognition (displays opening names)
- Game analysis after match (engine evaluates each move)
- Unlockable board skins (earned through gameplay)
- Rating system with ELO-style ranking
- Owner panel (Ctrl+Shift+O, password: jsgowner2008)

**Bug Fixes Applied:**
- Fixed missing `findKing()`, `isInCheck()`, `isSquareAttacked()` functions
- Fixed missing `makeMove()` and `unmakeMove()` functions
- Fixed en passant type mismatch (was storing object, needed string like "e3")
- Fixed numerous missing closing braces causing nested function definitions
- Fixed board layout shifting on moves (added CSS containment)
- Fixed analysis infinite loop when reaching checkmate/stalemate (added 5-second timeout)

**Codes System:**
- Press C key to open codes panel
- Available codes:
  - `OWNER2008` - Unlocks owner panel
  - `CHESS100` - 100 coins
  - `FREESKIN` - Random board skin
  - `RATING2000` - Sets rating to 2000
  - `NEWBIE` - Resets rating to 800
- Codes stored in localStorage, can only be redeemed once

**Opening Trainer (chess.com style):**
- Access via "📖 Openings" button in main menu
- 6 categories with 25+ openings:
  - King's Pawn (e4): Italian, Ruy López, Scotch, King's Gambit, Vienna
  - Queen's Pawn (d4): Queen's Gambit, London, KIA, Colle
  - Sicilian Defense: Open Sicilian, Najdorf, Dragon
  - Indian Defenses: King's Indian, Nimzo-Indian, Queen's Indian, Grünfeld
  - Flank Openings: English, Réti, Bird's
  - Popular Gambits: Queen's, King's, Evans, Danish, Smith-Morra
- Interactive board - click to make moves
- Move validation with correct/incorrect feedback
- Hints show destination square
- Progress saved in localStorage
- Explanations for each move

**Visual/Audio Improvements (chess.com style):**
- Sound effects: move, capture, check, castle, promote, game start/end
- Live evaluation bar on left side of board (white/black percentage)
- 3D piece styling with shadows and hover effects
- Last move highlighting (yellow squares)
- Legal move indicators (dots on valid squares)
- Legal capture indicators (circles around capturable pieces)
- Check indicator (red glow on king when in check)
- Captured pieces display with material advantage count

### 12. Texas Hold'em Poker
- **File:** `/poker.html` (~3,000 lines)
- **API:** `/api/poker.php` (~660 lines)
- **Data:** `/data/poker-tables.json`, `/data/poker-tournaments.json`

**Game Modes:**
- Quick Play vs AI (instant games against 2-5 bots)
- Multiplayer Tables (real players, 2-6 per table)
- Tournaments (buy-in tournaments with prize pools)

**Table Stakes:**
| Tier | Blinds | Buy-in Range |
|------|--------|--------------|
| Low | 5/10 | 100-1,000 |
| Medium | 50/100 | 1,000-10,000 |
| High | 500/1,000 | 10,000-100,000 |

**AI Difficulty Levels:**
1. Rookie - Loose passive, easy to beat
2. Regular - Balanced play
3. Shark - Tight aggressive
4. Pro - Reads board, bluffs strategically
5. Legend - Near-optimal play with position awareness

**Features:**
- Full Texas Hold'em rules (pre-flop through river)
- Hand evaluation (High Card → Royal Flush)
- Pot and side pot calculation
- All-in support
- Hand strength indicator
- Hand history panel
- Animated card dealing
- Oval poker table UI with player positions
- Raise slider with quick-bet buttons (½ pot, ¾ pot, pot)
- Owner panel (Ctrl+Shift+O) - Set chips, force hands, see all cards

## Key Technical Details

### User Data Structure
Users are stored in `/data/users.json` with this structure:
```json
{
  "users": {
    "username": {
      "coins": 1000,
      "inventory": { ... }
    }
  }
}
```

### Authentication
- Uses PHP sessions via `/api/auth.php`
- Check login: `fetch('api/auth.php?action=check', { credentials: 'include' })`
- Owner account: `billybuffalo15`
- Game owner password: `jsgowner2008` (used in Flappy Bird, Chess)

### Navigation
New features added to dropdowns in `index.html`:
- "Stuff" dropdown: Auctions, Stocks, Bounties, Predictions
- "Play" dropdown: Poker (added alongside Casino)

## Previous Session Work (Context)
- Auto-clicker for shop
- Fixed loot box opening
- Removed 10k coin gifting limit
- Added progressive jackpot to casino
- Fixed Flappy Bird pipes after boss 1
- Created centralized admin system for games

## Codebase Stats
- **Total lines:** ~196,000+ across 253 files
- **Largest files:**
  - `/chess.html` (~4,900 lines)
  - `/poker.html` (~3,000 lines)

## Potential Future Features
- Blackjack
- Mini Golf
- Dungeon Crawler
- Pet Battles (expand existing pets.html)
- Friend Battles
- Power-ups for Snake/Tetris
- More Flappy Bird content (new skins, achievements, etc.)
