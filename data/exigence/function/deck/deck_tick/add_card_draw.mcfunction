# Reset the cooldown for the next card draw
scoreboard players operation CardPlayCooldown TickCounter = #CardPlayCooldownLimit TickCounter



scoreboard players remove CardQueue DungeonRun 1

function exigence:deck/draw_card
