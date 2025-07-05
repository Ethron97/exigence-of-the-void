# Called by gametick as player

# CONSTRAINTS
# AS player alive
# max menace = false

#================================================================================================================


execute if score @s ActiveLevel matches 1 run scoreboard players add @s cr_ticksAliveL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s cr_ticksAliveL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s cr_ticksAliveL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s cr_ticksAliveL4 1

execute if score @s ActiveLevel matches 1 run scoreboard players add @s t_ticksAliveL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s t_ticksAliveL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s t_ticksAliveL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s t_ticksAliveL4 1
