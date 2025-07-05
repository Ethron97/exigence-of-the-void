# Called by game setup

#=============================================================================================================

execute as @e[type=minecraft:armor_stand,tag=VarianceNode] run function exigence:variance/node/activate

# Call entity-based setup
#execute as @e[type=armor_stand,tag=VarianceNode] at @s run function exigence:variance/node/setup

# Start variance setup loop
scoreboard players set #variance Temp 1
schedule function exigence:variance/setup/setup_loop 1t append
