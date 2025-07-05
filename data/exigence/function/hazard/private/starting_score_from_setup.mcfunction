# Add scores if starting hazard node setup from setup (base amount)

## CONSTRAINTS
#   AS HazardNode

#=============================================================================================================

execute if score @s ObjectLevel matches 1 run scoreboard players add @a[tag=ActivePlayer] cr_hazardSetupL1 1
execute if score @s ObjectLevel matches 2 run scoreboard players add @a[tag=ActivePlayer] cr_hazardSetupL2 1
execute if score @s ObjectLevel matches 3 run scoreboard players add @a[tag=ActivePlayer] cr_hazardSetupL3 1
execute if score @s ObjectLevel matches 4 run scoreboard players add @a[tag=ActivePlayer] cr_hazardSetupL4 1

execute if score @s ObjectLevel matches 1 run scoreboard players add @a[tag=ActivePlayer] t_hazardSetupL1 1
execute if score @s ObjectLevel matches 2 run scoreboard players add @a[tag=ActivePlayer] t_hazardSetupL2 1
execute if score @s ObjectLevel matches 3 run scoreboard players add @a[tag=ActivePlayer] t_hazardSetupL3 1
execute if score @s ObjectLevel matches 4 run scoreboard players add @a[tag=ActivePlayer] t_hazardSetupL4 1
