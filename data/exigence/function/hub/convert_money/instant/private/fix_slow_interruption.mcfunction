# Fix coin loss from interrupting the Slow (by coin) conversion

## CONSTRAINTS
#   AS player

#====================================================================================================

# Add any excess back to the to-be-converted score
scoreboard players operation #temp Temp = @s hub.coin_conversion.coins_converted
scoreboard players operation #temp Temp %= 5 number

scoreboard players operation @s hub.coin_conversion += #temp Temp