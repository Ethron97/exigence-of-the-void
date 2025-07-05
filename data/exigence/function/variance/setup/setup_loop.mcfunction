# Loop over all variances 1 tick at a time

#=============================================================================================================

# Trigger a random StartingHazard node
execute if score #variance Temp matches 1 positioned -282 1 -118 as @e[type=armor_stand,tag=VarianceNode,tag=Setup,scores={ObjectLevel=1},limit=1,sort=nearest] at @s run function exigence:variance/node/setup
execute if score #variance Temp matches 2 positioned -282 1 -118 as @e[type=armor_stand,tag=VarianceNode,tag=Setup,scores={ObjectLevel=2},limit=1,sort=nearest] at @s run function exigence:variance/node/setup
execute if score #variance Temp matches 3 positioned -282 1 -118 as @e[type=armor_stand,tag=VarianceNode,tag=Setup,scores={ObjectLevel=3},limit=1,sort=nearest] at @s run function exigence:variance/node/setup
execute if score #variance Temp matches 4 positioned -282 1 -118 as @e[type=armor_stand,tag=VarianceNode,tag=Setup,scores={ObjectLevel=4},limit=1,sort=nearest] at @s run function exigence:variance/node/setup

execute if score #variance Temp matches 1 unless entity @e[type=minecraft:armor_stand,tag=VarianceNode,tag=Setup,scores={ObjectLevel=1}] run scoreboard players set #variance Temp 2
execute if score #variance Temp matches 2 unless entity @e[type=minecraft:armor_stand,tag=VarianceNode,tag=Setup,scores={ObjectLevel=2}] run scoreboard players set #variance Temp 3
execute if score #variance Temp matches 3 unless entity @e[type=minecraft:armor_stand,tag=VarianceNode,tag=Setup,scores={ObjectLevel=3}] run scoreboard players set #variance Temp 4
execute if score #variance Temp matches 4 unless entity @e[type=minecraft:armor_stand,tag=VarianceNode,tag=Setup,scores={ObjectLevel=4}] run scoreboard players set #variance Temp 5

execute unless score #variance Temp matches 5 run schedule function exigence:variance/setup/setup_loop 1t append
execute if score #variance Temp matches 5 run function exigence:variance/setup/setup_variance_finish
