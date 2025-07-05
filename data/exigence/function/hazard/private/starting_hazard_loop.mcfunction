# Called by finishing the Variance setup loop
# Loop over all starting hazards 1 tick at a time

#=============================================================================================================

# Trigger a random StartingHazard node
execute if score #starting_hazard Temp matches 1 as @e[type=minecraft:armor_stand,tag=StartingHazard,limit=1,sort=random,scores={ObjectLevel=1}] run function exigence:hazard/private/starting_hazard
execute if score #starting_hazard Temp matches 2 as @e[type=minecraft:armor_stand,tag=StartingHazard,limit=1,sort=random,scores={ObjectLevel=2}] run function exigence:hazard/private/starting_hazard
execute if score #starting_hazard Temp matches 3 as @e[type=minecraft:armor_stand,tag=StartingHazard,limit=1,sort=random,scores={ObjectLevel=3}] run function exigence:hazard/private/starting_hazard
execute if score #starting_hazard Temp matches 4 as @e[type=minecraft:armor_stand,tag=StartingHazard,limit=1,sort=random,scores={ObjectLevel=4}] run function exigence:hazard/private/starting_hazard

execute if score #starting_hazard Temp matches 1 unless entity @e[type=minecraft:armor_stand,tag=StartingHazard,scores={ObjectLevel=1}] run scoreboard players set #starting_hazard Temp 2
execute if score #starting_hazard Temp matches 2 unless entity @e[type=minecraft:armor_stand,tag=StartingHazard,scores={ObjectLevel=2}] run scoreboard players set #starting_hazard Temp 3
execute if score #starting_hazard Temp matches 3 unless entity @e[type=minecraft:armor_stand,tag=StartingHazard,scores={ObjectLevel=3}] run scoreboard players set #starting_hazard Temp 4
execute if score #starting_hazard Temp matches 4 unless entity @e[type=minecraft:armor_stand,tag=StartingHazard,scores={ObjectLevel=4}] run scoreboard players set #starting_hazard Temp 5

execute unless score #starting_hazard Temp matches 5 run schedule function exigence:hazard/private/starting_hazard_loop 2t
