# Update transmission based on type
# Called from game_tick e_tick armorstand

## CONSTRAINTS
#   AS transmitor (armor stand)
#       Item tag

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 4.. run say (D4) Update waypoint ITEM

## SWITCH
execute if entity @s[tag=EchoWaypoint] run return run function exigence:game/other/waypoint/update/echo
# Level key
# Vault key
# Ardor flame