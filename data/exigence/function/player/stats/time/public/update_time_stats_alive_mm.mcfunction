# Called by gametick as player

# CONSTRAINTS
# AS player alive
# MaxMenace = true

#================================================================================================================

execute if score @s ActiveLevel matches 1 run scoreboard players add @s cr_maxMenaceTicksL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s cr_maxMenaceTicksL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s cr_maxMenaceTicksL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s cr_maxMenaceTicksL4 1

execute if score @s ActiveLevel matches 1 run scoreboard players add @s t_maxMenaceTicksL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s t_maxMenaceTicksL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s t_maxMenaceTicksL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s t_maxMenaceTicksL4 1
