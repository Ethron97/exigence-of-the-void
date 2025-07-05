# Standalone function to redistribute a single ravager that gets too close to a level door

## CONSTRAINTS
#   AS ravager

#==================================================================================================================

# Particles and sound effect
execute at @s run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 2 1
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 1 1 1 0.01 50

# Mark menace node based on level
execute if score @s ObjectLevel matches 1 as @e[scores={ObjectLevel=1},type=minecraft:armor_stand,tag=MenaceNode,tag=!RavagerBlacklist,limit=1,sort=random] run tag @s add RedistributePoint
execute if score @s ObjectLevel matches 2 as @e[scores={ObjectLevel=2},type=minecraft:armor_stand,tag=MenaceNode,tag=!RavagerBlacklist,limit=1,sort=random] run tag @s add RedistributePoint
execute if score @s ObjectLevel matches 3 as @e[scores={ObjectLevel=3},type=minecraft:armor_stand,tag=MenaceNode,tag=!RavagerBlacklist,limit=1,sort=random] run tag @s add RedistributePoint
execute if score @s ObjectLevel matches 4 as @e[scores={ObjectLevel=4},type=minecraft:armor_stand,tag=MenaceNode,tag=!RavagerBlacklist,limit=1,sort=random] run tag @s add RedistributePoint

# Teleport ravager to "RedistributePoint" MenaceNode
teleport @s @e[type=minecraft:armor_stand,tag=RedistributePoint,limit=1]

# Remove local tag
execute as @e[type=minecraft:armor_stand,tag=RedistributePoint] run tag @s remove RedistributePoint
