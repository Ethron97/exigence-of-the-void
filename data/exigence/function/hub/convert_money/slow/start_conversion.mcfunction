# Convert money 1 coin at a time (1 coin per tick)

## CONSTRAINTS
#   AS player

#====================================================================================================

tag @s add SlowConversion

# Reset scores
scoreboard players set @s hub.coin_conversion.coins_converted 0
scoreboard players set @s hub.coin_conversion.money_converted 0

# Run initial conversion
execute if score @s hub.coin_conversion matches 5.. run function exigence:hub/convert_money/slow/convert_coin
execute if score @s hub.coin_conversion matches ..4 run function exigence:hub/convert_money/finish_converting
