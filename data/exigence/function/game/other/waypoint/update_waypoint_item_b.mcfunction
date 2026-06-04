# Update transmission based on type
# Called from game_tick e_tick armorstand

## CONSTRAINTS
#   AS transmitor (armor stand)
#       Item tag

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 4.. run say (D4) Update waypoint item B

## SWITCH
execute if entity @s[tag=EchoWaypoint] run return run function exigence:game/other/waypoint/update/echo
execute if entity @s[tag=LevelKeyWaypoint] run return run function exigence:game/other/waypoint/update/level_key
execute if entity @s[tag=VaultKeyWaypoint] run return run function exigence:game/other/waypoint/update/vault_key
execute if entity @s[tag=ArdorWaypoint] run return run function exigence:game/other/waypoint/update/ardor