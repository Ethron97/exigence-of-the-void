# Standalone function to redistribute a single ravager that gets too close to a level door

## CONSTRAINTS
#   AS ravager

#====================================================================================================

# Particles and sound effect
execute at @s run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 2 1
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 1 1 1 0.01 50

# TP ravager to redistribution point
execute if score @s game.entity.object_level matches 1 run tp @s @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=MenaceNode,tag=!RavagerBlacklist,sort=random,limit=1]
execute if score @s game.entity.object_level matches 2 run tp @s @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=MenaceNode,tag=!RavagerBlacklist,sort=random,limit=1]
execute if score @s game.entity.object_level matches 3 run tp @s @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=MenaceNode,tag=!RavagerBlacklist,sort=random,limit=1]
execute if score @s game.entity.object_level matches 4 run tp @s @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=MenaceNode,tag=!RavagerBlacklist,sort=random,limit=1]

