# Add scores if starting hazard node setup from card

## CONSTRAINTS
#   AS HazardNode

#=============================================================================================================

execute if score @s ObjectLevel matches 1 run scoreboard players add @a[tag=ActivePlayer] cr_hazardCardL1 1
execute if score @s ObjectLevel matches 2 run scoreboard players add @a[tag=ActivePlayer] cr_hazardCardL2 1
execute if score @s ObjectLevel matches 3 run scoreboard players add @a[tag=ActivePlayer] cr_hazardCardL3 1
execute if score @s ObjectLevel matches 4 run scoreboard players add @a[tag=ActivePlayer] cr_hazardCardL4 1

execute if score @s ObjectLevel matches 1 run scoreboard players add @a[tag=ActivePlayer] t_hazardCardL1 1
execute if score @s ObjectLevel matches 2 run scoreboard players add @a[tag=ActivePlayer] t_hazardCardL2 1
execute if score @s ObjectLevel matches 3 run scoreboard players add @a[tag=ActivePlayer] t_hazardCardL3 1
execute if score @s ObjectLevel matches 4 run scoreboard players add @a[tag=ActivePlayer] t_hazardCardL4 1
