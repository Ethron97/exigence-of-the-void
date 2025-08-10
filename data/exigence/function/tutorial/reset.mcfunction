## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

# DEBUG
say Reset tutorial

# Markers
execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] run tag @s remove LastDropped
execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=Dropped] run tag @s remove Dropped
execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback] run tag @s remove Fallback


# Entities
kill @e[distance=..1000,type=ravager]
kill @e[distance=..1000,type=item]
kill @e[distance=..1000,type=armor_stand,tag=Bait1]
kill @e[distance=..1000,type=villager,tag=Bait1]

# Ice doors
#   Ravager arena entrance
fill 114 104 11 114 105 12 ice
fill 109 104 17 108 105 17 ice
#   Ravager arena exits
fill 126 103 29 130 109 33 ice replace structure_void
#   Berry exit
fill 122 114 70 124 119 74 ice replace structure_void
#   Heartbeat sample exit
fill 92 122 85 88 128 90 ice replace structure_void
#   Treasure town exit
fill 84 122 134 79 127 139 ice replace structure_void
#   Altar exit
fill 107 125 157 112 131 153 ice replace structure_void
#   CLimby exit
fill 122 125 142 126 129 147 ice replace structure_void


# Heartbeat sample buttons
fill 102 123 86 98 123 86 air

schedule clear exigence:tutorial/flow/private/ravager_loop

execute as @n[tag=BellNode,scores={ObjectLevel=10}] run function exigence:bell/node/deactivate
execute as @n[tag=BellNode,scores={ObjectLevel=10}] run function exigence:bell/node/activate

# Reset nodes
execute as @e[distance=..1000,type=minecraft:armor_stand,tag=BerryNode,scores={ObjectLevel=10}] at @s run function exigence:botany/node/berry_bush_inactive
execute as @e[distance=..1000,type=minecraft:armor_stand,tag=AltarNode,scores={ObjectLevel=10}] at @s run function exigence:altar/node/deactivate

