# Drop coins above CoinKeep

## CONSTRAINTS
#   AS player

#==============================================================================================================

# Get current coin count
execute store result score #coins Temp run clear @s minecraft:gold_nugget 0

# If coins is LE coinkeep, just return as there is nothing to drop
execute if score #coins Temp <= @s game.player.mod.coin_keep run return 1

# Subtract CoinKeep
scoreboard players operation #coins Temp -= @s game.player.mod.coin_keep

# Copy score to storage
execute store result storage exigence:give amount int 1 run scoreboard players get #coins Temp

# Call macro to drop AMOUNT and clear AMOUNT
function exigence:player/drop/coins/macro with storage exigence:give
