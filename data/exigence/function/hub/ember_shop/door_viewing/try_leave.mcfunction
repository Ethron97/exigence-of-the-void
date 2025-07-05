# Called by door_tick when player steps into light blue stained glass and they are already ember viewing

## CONSTRAINTS
#   AS player with EmberViewing

#==========================================================================================================

# Determines whether coop is leaving or primary player is leaving

# If coop viewer, just teleport out and remove tags
execute if entity @s[tag=EmberViewing,tag=CoopViewing] run function exigence:hub/ember_shop/door_viewing/leave_coop

# If primary player, kick both out and save chests
execute if entity @s[tag=EmberViewing,tag=!CoopViewing] run function exigence:hub/ember_shop/door_viewing/leave
