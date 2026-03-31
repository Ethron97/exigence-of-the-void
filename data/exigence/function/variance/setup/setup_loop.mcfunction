# Loop over all variances 1 tick at a time

#====================================================================================================

# Trigger a random StartingHazard node
execute if score #variance Temp matches 1 positioned -282 1 -118 as @e[type=armor_stand,scores={ObjectLevel=1},tag=VarianceNode,tag=Setup,sort=nearest,limit=1] at @s run function exigence:variance/node/setup
execute if score #variance Temp matches 2 positioned -282 1 -118 as @e[type=armor_stand,scores={ObjectLevel=2},tag=VarianceNode,tag=Setup,sort=nearest,limit=1] at @s run function exigence:variance/node/setup
execute if score #variance Temp matches 3 positioned -282 1 -118 as @e[type=armor_stand,scores={ObjectLevel=3},tag=VarianceNode,tag=Setup,sort=nearest,limit=1] at @s run function exigence:variance/node/setup
execute if score #variance Temp matches 4 positioned -282 1 -118 as @e[type=armor_stand,scores={ObjectLevel=4},tag=VarianceNode,tag=Setup,sort=nearest,limit=1] at @s run function exigence:variance/node/setup

execute if score #variance Temp matches 1 unless entity @e[type=minecraft:armor_stand,scores={ObjectLevel=1},tag=VarianceNode,tag=Setup] run scoreboard players set #variance Temp 2
execute if score #variance Temp matches 2 unless entity @e[type=minecraft:armor_stand,scores={ObjectLevel=2},tag=VarianceNode,tag=Setup] run scoreboard players set #variance Temp 3
execute if score #variance Temp matches 3 unless entity @e[type=minecraft:armor_stand,scores={ObjectLevel=3},tag=VarianceNode,tag=Setup] run scoreboard players set #variance Temp 4
execute if score #variance Temp matches 4 unless entity @e[type=minecraft:armor_stand,scores={ObjectLevel=4},tag=VarianceNode,tag=Setup] run scoreboard players set #variance Temp 5

execute unless score #variance Temp matches 5 run schedule function exigence:variance/setup/setup_loop 1t append
execute if score #variance Temp matches 5 run function exigence:variance/setup/setup_variance_finish
