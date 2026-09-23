# QuickAbandonFixed

QuickAbandonFixed lets you abandon an active, abandonable quest by holding **Alt** while clicking it.

## Features

- Alt + click a quest in the quest log to abandon it immediately.
- Alt + left-click a quest header in the objective tracker to abandon it without opening the quest log or map.
- Without Alt, clicks keep Blizzard's default behavior. Right-clicks in the objective tracker are unchanged.
- Only quests that are currently in the quest log and accepted by `C_QuestLog.CanAbandonQuest` are affected.
- Displays a system message when it sends an abandonment request.

## Confirmation behavior

The addon calls Blizzard's quest-log abandonment API directly. It intentionally skips the Blizzard confirmation dialog, including the warning shown when a quest has abandonable items. Use Alt-click only when you are sure the quest should be abandoned.

## Installation

Place the `QuickAbandonFixed` folder in the Retail `Interface/AddOns` directory. It must contain `QuickAbandonFixed.toc`, `QuickAbandonFixed.lua`, and the `Resources` folder.

After installing or updating, run `/reload` in game.

## Compatibility

- Retail Interface: `120100`
- No external libraries or SavedVariables are required.
- Licensed under the MIT License. See [LICENSE](LICENSE).

Forked from [sirj0k3r/QuickAbandon](https://github.com/sirj0k3r/QuickAbandon).
