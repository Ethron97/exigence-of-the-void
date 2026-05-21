# Resets the state of the tutorial
#   Built to be able to run while a player is in it

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================
execute unless dimension exigence:tutorial run return run say (C) Called tutorial.reset without in exigence:tutorial, cancelling
#----------------------------------------------------------------------------------------------------

# DEBUG
execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Reset tutorial

# Markers
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=LastDropped] run tag @s remove LastDropped
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=Dropped] run tag @s remove Dropped
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=Fallback] run tag @s remove Fallback

# Entities
kill @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:ravager]
kill @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=vex,tag=TutorialEyeball]
kill @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:item]
kill @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:armor_stand,tag=Bait1]
kill @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:armor_stand,tag=Bait2]
kill @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:armor_stand,tag=Waypoint]

effect clear @a[tag=Tutorial] luck
effect clear @a[tag=Tutorial] jump_boost

scoreboard players set tut.menace hub.tutorial 0
scoreboard players set tut.card_draw_cooldown hub.tutorial 600
scoreboard players set tut.fatigue hub.tutorial 0
scoreboard players set tut.ravager_aggro_cooldown hub.tutorial 0
scoreboard players set tut.max_menace hub.tutorial 0
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
#   Jumpboost exit
fill 171 130 110 171 132 112 ice replace structure_void
#   Glassy exit
fill 195 129 81 198 133 78 ice replace structure_void
#   Final test (open by
fill 175 131 49 177 135 47 ice replace structure_void

# Sculk bell hazard
fill 152 126 141 152 130 147 air replace sculk

# Kill exit armorstnads (and clear light)
execute at @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialExitNode] run fill ~ ~1 ~ ~ ~1 ~ air replace light
kill @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialExitNode]
kill @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:block_display,tag=TutorialExitPortalDisplay]

execute positioned 186.5 131.0 33.5 run function exigence:tutorial/setup/setup_exit_portal

# Jump boost insurance
setblock 157 128 112 air

# Heartbeat sample buttons
fill 102 123 86 98 123 86 air

# Kill Ravager Glass stands (function both respawns and kills)
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=RavagerGlass] run function exigence:game/other/ravager_glass/respawn_ravager_glass

schedule clear exigence:tutorial/flow/private/ravager_loop

execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,scores={node.property.object_level=10},tag=BellNode] at @s run function exigence:bell/node/deactivate

# Reset nodes
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,scores={node.property.object_level=10},tag=BerryNode] at @s run function exigence:botany/node/berry_bush_inactive
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,scores={node.property.object_level=10},tag=AltarNode] at @s run function exigence:altar/node/deactivate
tag @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=DonutEmber] remove DonutEmber

execute as @a[tag=Tutorial] run title @s actionbar ""

execute at @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=EchoNode] run fill ~ ~1 ~ ~ ~1 ~ air replace light
