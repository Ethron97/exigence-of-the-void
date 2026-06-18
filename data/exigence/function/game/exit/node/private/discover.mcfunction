# Called by exit_node.tick when a player gets within 8 blocks of it

## CONSTRAINTS
#   AS/AT ExitNode

#====================================================================================================

# Add tag
tag @s add PortalDiscovered

# Glow if all echos found
execute if score game.all_echos_found game.state matches 1 run function exigence:game/exit/node/private/discover_glow

# Enable waypoint
execute as @n[type=minecraft:armor_stand,tag=Waypoint,tag=ExitPortal,distance=..3] run function exigence:game/exit/node/waypoint/activate