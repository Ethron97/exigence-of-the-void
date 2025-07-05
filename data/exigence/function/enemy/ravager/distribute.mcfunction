# Only designed to be called by distribute_ravagers or redistribute_ravagers

## CONSTRAINTS
#   AS Ravager

#==================================================================================================================

# Pick one random MenaceNode that does not have tag "Ravagered" and tp to it
execute if score @s ObjectLevel matches 1 run teleport @s @e[scores={ObjectLevel=1},type=minecraft:armor_stand,tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,limit=1,sort=random]
execute if score @s ObjectLevel matches 2 run teleport @s @e[scores={ObjectLevel=2},type=minecraft:armor_stand,tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,limit=1,sort=random]
execute if score @s ObjectLevel matches 3 run teleport @s @e[scores={ObjectLevel=3},type=minecraft:armor_stand,tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,limit=1,sort=random]
execute if score @s ObjectLevel matches 4 run teleport @s @e[scores={ObjectLevel=4},type=minecraft:armor_stand,tag=MenaceNode,tag=!Ravagered,tag=!RavagerBlacklist,limit=1,sort=random]

# Mark the nearest 6 MenaceNodes as Ravagered.
execute at @s as @e[distance=..64,type=minecraft:armor_stand,tag=MenaceNode,tag=!Ravagered,limit=6,sort=nearest] run tag @s add Ravagered

# Remove tags if applicable
tag @s remove ReDistribute
tag @s remove Distribute
