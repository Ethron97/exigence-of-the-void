# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS/AT item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) clicked eyeball sensors

# If admin clicks it, just finish the door
execute if entity @p[tag=Interacting,tag=Admin,distance=..16] run return run scoreboard players set #sensor_state Temp 60


tellraw @p[tag=Interacting,tag=Predungeon,distance=..16] [{text:"You are being sensed! Keep looking until the door powers up.",color:"light_purple"}]

# Increase cooldown score for player
scoreboard players add @p[tag=Interacting,distance=..16] hub.player.interaction_cooldown 20

# Just let the player know that once all players are looking at a sensor, the door will open
# TODO
