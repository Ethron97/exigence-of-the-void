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
kill @e[distance=..1000,type=vex,tag=TutorialEyeball]
kill @e[distance=..1000,type=item]
kill @e[distance=..1000,type=armor_stand,tag=Bait1]
kill @e[distance=..1000,type=armor_stand,tag=Bait2]

effect clear @a[tag=Tutorial] luck
effect clear @a[tag=Tutorial] jump_boost

scoreboard players set Menace Tutorial 0
scoreboard players set CardDrawCooldown Tutorial 600
scoreboard players set Fatigue Tutorial 0
scoreboard players set RavagerAggroCooldownCurrent Tutorial 0
scoreboard players set MaxMenace Tutorial 0
bossbar set exigence:tutorial_deck color white
bossbar set exigence:tutorial color green
worldborder warning distance 0

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
#   Bellwater entrance
fill 136 126 140 137 126 142 ice replace structure_void
#   Bellwater exit
fill 142 126 121 146 131 118 ice replace structure_void
#   Glassy exit
fill 195 129 81 198 133 78 ice replace structure_void
#   Final test (open by
fill 175 131 49 177 135 47 ice replace structure_void

# Sculk bell hazard
fill 152 126 141 152 130 147 air replace sculk

# Kill exit armorstnads (and clear light)
execute at @e[distance=..1000,type=minecraft:marker,tag=TutorialExitNode] run fill ~ ~1 ~ ~ ~1 ~ air replace light
kill @e[distance=..1000,type=marker,tag=TutorialExitNode]
kill @e[distance=..1000,type=block_display,tag=TutorialExitPortalDisplay]

execute positioned 186.5 131.0 33.5 run function exigence:tutorial/setup/setup_exit_portal

# Jump boost insurance
setblock 157 128 112 air

# Heartbeat sample buttons
fill 102 123 86 98 123 86 air

# Kill Ravager Glass stands (function both respawns and kills)
execute as @e[distance=..1000,type=minecraft:marker,tag=RavagerGlass,tag=TutorialGlass] run function exigence:game/other/ravager_glass/respawn_ravager_glass

schedule clear exigence:tutorial/flow/private/ravager_loop

execute as @n[tag=BellNode,scores={ObjectLevel=10}] run function exigence:bell/node/deactivate
execute as @n[tag=BellNode,scores={ObjectLevel=10}] run function exigence:bell/node/activate

# Reset nodes
execute as @e[distance=..1000,type=minecraft:armor_stand,tag=BerryNode,scores={ObjectLevel=10}] at @s run function exigence:botany/node/berry_bush_inactive
execute as @e[distance=..1000,type=minecraft:armor_stand,tag=AltarNode,scores={ObjectLevel=10}] at @s run function exigence:altar/node/deactivate

execute as @a[tag=Tutorial] run title @s actionbar ""

execute at @e[distance=..1000,type=minecraft:armor_stand,tag=EchoNode] run fill ~ ~1 ~ ~ ~1 ~ air replace light
