# Called by hub_tick each tick if tutorial is active

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

scoreboard players add tut.ticks hub.tutorial 1

execute as @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=Tutorial,limit=1] at @s run function exigence:tutorial/tick_player

# Player entering final section door
execute if score tut.step hub.tutorial matches 1500 if entity @a[x=173,y=130,z=43,dx=10,dy=5,dz=2,tag=Tutorial] run function exigence:tutorial/flow/step

# Ravager glass update
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=RavagerGlass] run function exigence:game/other/ravager_glass/update

# ALTARS
# Inactive altars
execute at @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,scores={game.node.node_state=0..1},tag=AltarNode] if score seconds.cooldown tick_counter matches 7 run particle minecraft:glow ~ ~0.5 ~ 0.2 0.2 0.2 0 1
execute at @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,scores={game.node.node_state=0..1},tag=AltarNode] if score seconds.cooldown tick_counter matches 17 run particle minecraft:glow ~ ~0.5 ~ 0.2 0.2 0.2 0 1
# Radiant altars
execute at @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,scores={game.node.node_state=2},tag=AltarNode] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0 3

execute at @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=BellNode,tag=Active] if score seconds.cooldown tick_counter matches 7 run particle minecraft:glow ~ ~0.5 ~ 0.2 0.2 0.2 0 1
execute at @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=BellNode,tag=Active] if score seconds.cooldown tick_counter matches 17 run particle minecraft:glow ~ ~0.5 ~ 0.2 0.2 0.2 0 1

# CLIMBY DOOR OPEN
execute if score tut.step hub.tutorial matches 1103 at @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:armor_stand,tag=Bait1] if entity @n[type=minecraft:ravager,distance=..2] run function exigence:tutorial/flow/private/open_climby_door
# POOL DOOR OPEN
execute if score tut.step hub.tutorial matches 1308 at @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:armor_stand,tag=Bait2] if entity @n[type=minecraft:ravager,distance=..2] run function exigence:tutorial/flow/private/open_glassy_door

execute if score tut.step hub.tutorial matches 1501.. run function exigence:tutorial/flow/final_section/tick

# Win check
execute if score tut.step hub.tutorial matches 1501 as @a[tag=Tutorial,distance=..1000] at @s if entity @e[type=minecraft:marker,tag=TutorialExitNode,distance=..2] run title @s actionbar {text:"You must collect the Echo Shard to escape!",color:"red"}
execute if score tut.step hub.tutorial matches 1502 as @a[tag=Tutorial,distance=..1000] at @s if entity @e[type=minecraft:marker,tag=TutorialExitNode,distance=..2] run function exigence:tutorial/access/complete_tutorial
