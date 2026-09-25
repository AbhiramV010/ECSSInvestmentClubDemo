## Core gameplay
1. Start screen: game title, one-line rules, a **name input** (max 12 characters, required), and a big **START** button.
   - START stays disabled until a name is entered.
   - Pressing `Enter` in the name field starts the game.
2. On start, a 30-second countdown begins and the price starts moving. The player's name shows at the top of the screen during the round.
3. Player clicks **BUY** once. The buy price is locked and shown.
4. Player clicks **SELL** once, after buying. The sell price is locked.
5. Profit = sell price − buy price (can be negative).
6. Round ends on SELL or when the timer hits 0.
   - If the player bought but never sold, auto-sell at the final price.
   - If the player never bought, profit = 0.
7. End screen shows the name, profit, a message ("Nice trade!", "Ouch, you bought the top"), and a **NEXT PLAYER** button that returns to the start screen with the name field cleared.
   - The score is saved to the leaderboard automatically under the entered name.

## Leaderboard
- Top 5 profits with names, always visible on the side of the screen
- Stored in memory for the session (a JS array). localStorage is optional, only as a backup if the tab reloads.
- Hidden reset: `Shift + R` clears the leaderboard