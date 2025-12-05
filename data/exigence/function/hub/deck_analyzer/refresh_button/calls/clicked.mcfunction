# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

## INPUT
#   data

#=============================================================================================================

say Clicked refresh button

# Effects
execute at @s run playsound minecraft:entity.ender_eye.death ui @a ~ ~ ~ 1 1
execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

# Try refresh, depending on where the button is
function exigence:hub/deck_analyzer/refresh_button/calls/refresh/refresh

# Increase cooldown score for player
scoreboard players add @p[distance=..16,tag=Interacting] hub.player.interaction_cooldown 20