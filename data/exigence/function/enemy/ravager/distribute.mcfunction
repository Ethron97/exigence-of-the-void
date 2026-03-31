# Only designed to be called by distribute_ravagers or redistribute_ravagers

## CONSTRAINTS
#   AS Ravager

#====================================================================================================

# Pick one random MenaceNode that does not have tag "Ravagered" and tp to it
execute if score @s ObjectLevel matches 1 run teleport @s @e[type=minecraft:armor_stand,scores={ObjectLevel=1},tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,sort=random,limit=1]
execute if score @s ObjectLevel matches 2 run teleport @s @e[type=minecraft:armor_stand,scores={ObjectLevel=2},tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,sort=random,limit=1]
execute if score @s ObjectLevel matches 3 run teleport @s @e[type=minecraft:armor_stand,scores={ObjectLevel=3},tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,sort=random,limit=1]
execute if score @s ObjectLevel matches 4 run teleport @s @e[type=minecraft:armor_stand,scores={ObjectLevel=4},tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,sort=random,limit=1]

# Mark the nearest 6 MenaceNodes as Ravagered.
execute at @s as @e[type=minecraft:armor_stand,tag=MenaceNode,tag=!Ravagered,distance=..64,sort=nearest,limit=6] run tag @s add Ravagered

# Remove tags if applicable
tag @s remove ReDistribute
tag @s remove Distribute
