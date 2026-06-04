# Update transmission range

## CONSTRAINTS
#   AS/AT waypoint (armor stand)
#       Tag = VaultKeyWaypoint

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 4.. run say (D4) Update waypoint VAULT KEY

# If nobody on active level, set to greyed out (default, no level or star info)
execute if score #active_on_same Temp matches 0 run attribute @s waypoint_transmit_range base set 0
execute if score #active_on_same Temp matches 0 run return run waypoint modify @s color dark_gray
#----------------------------------------------------------------------------------------------------

# If there is a player on the same level, reset color
waypoint modify @s color white

# Update transmission range
#   If glowing:
execute if score @n[type=minecraft:item,tag=VaultKey,distance=..1] game.entity.glow_remaining matches 1.. run return run attribute @s waypoint_transmit_range base set 1000
#   If detection pinged:
execute if score @n[type=minecraft:item,tag=VaultKey,distance=..1] game.waypoint.revealed_ticks matches 1.. run return run attribute @s waypoint_transmit_range base set 1000
# Else reset transmission range
attribute @s waypoint_transmit_range base set 0
