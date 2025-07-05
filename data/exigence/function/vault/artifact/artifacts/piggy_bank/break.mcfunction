# Bust open piggy bank to collect all of the money in it

## CONSTRAINTS
#   AS piggy bank item
#   UNLESS player with ConvertingCoins already exists
#   UNLESS player with ActivePlayer exists

#===================================================================================================

# Convert coins to money as nearest player

execute at @s run scoreboard players operation Coins CoinsToConvert = @p PiggyBank
scoreboard players set @p PiggyBank 0
execute at @s as @p run function exigence:hub/convert_money/convert


# Particle
# TODO

# Kill self
kill @s[type=minecraft:item]
