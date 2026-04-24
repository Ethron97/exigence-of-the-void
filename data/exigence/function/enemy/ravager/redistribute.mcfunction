# Standalone function to redistribute a single ravager that gets too close to a level door

## CONSTRAINTS
#   AS ravager

#====================================================================================================

# Particles and sound effect
execute at @s run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 2 1
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 1 1 1 0.01 50

# Mark menace node based on level
execute if score @s game.entity.object_level matches 1 as @e[type=minecraft:armor_stand,scores={node.property.object_level=1},tag=MenaceNode,tag=!RavagerBlacklist,sort=random,limit=1] run tag @s add RedistributePoint
execute if score @s game.entity.object_level matches 2 as @e[type=minecraft:armor_stand,scores={node.property.object_level=2},tag=MenaceNode,tag=!RavagerBlacklist,sort=random,limit=1] run tag @s add RedistributePoint
execute if score @s game.entity.object_level matches 3 as @e[type=minecraft:armor_stand,scores={node.property.object_level=3},tag=MenaceNode,tag=!RavagerBlacklist,sort=random,limit=1] run tag @s add RedistributePoint
execute if score @s game.entity.object_level matches 4 as @e[type=minecraft:armor_stand,scores={node.property.object_level=4},tag=MenaceNode,tag=!RavagerBlacklist,sort=random,limit=1] run tag @s add RedistributePoint

# Teleport ravager to "RedistributePoint" MenaceNode
teleport @s @e[type=minecraft:armor_stand,tag=RedistributePoint,limit=1]

# Remove local tag
execute as @e[type=minecraft:armor_stand,tag=RedistributePoint] run tag @s remove RedistributePoint
