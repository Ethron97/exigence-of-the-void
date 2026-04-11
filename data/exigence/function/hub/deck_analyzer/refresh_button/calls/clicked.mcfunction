# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS/AT item shop display

## INPUT
#   data

#====================================================================================================

#say (D3) Clicked refresh button

# Increase cooldown score for player
scoreboard players add @p[tag=Interacting,distance=..16] hub.player.interaction_cooldown 20

# If there is no chest directly beside it, then don't call anything
execute unless block ^1 ^ ^ minecraft:chest run return run tellraw @p[tag=Interacting,distance=..16] [{text:"No chests loaded",color:red}]
#----------------------------------------------------------------------------------------------------

# Effects
playsound minecraft:entity.ender_eye.death ui @a ~ ~ ~ 1 1
particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

scoreboard players operation #relay_to_room_id Temp = @p[tag=Interacting,distance=..16] hub.player.room_id

# Try refresh, depending on where the button is
function exigence:hub/deck_analyzer/refresh_button/calls/refresh/refresh
