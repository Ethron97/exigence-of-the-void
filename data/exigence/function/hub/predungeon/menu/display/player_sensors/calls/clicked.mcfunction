# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS/AT item shop display

#====================================================================================================

#say clicked eyeball sensors

tellraw @p[distance=..16,tag=Interacting,tag=Predungeon] [{text:"You are being sensed! Keep looking until the door powers up.",color:"light_purple"}]

# Increase cooldown score for player
scoreboard players add @p[distance=..16,tag=Interacting] hub.player.interaction_cooldown 20

# Just let the player know that once all players are looking at a sensor, the door will open
# TODO
