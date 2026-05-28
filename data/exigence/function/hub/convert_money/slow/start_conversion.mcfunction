# Convert money 1 coin at a time (1 coin per tick)

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Start Coin Conversion (Slow)

tag @s add SlowConversion

# Reset scores
scoreboard players set @s hub.coin_conversion.coins_converted 0
scoreboard players set @s hub.coin_conversion.money_converted 0

# Run initial conversion
#execute if score @s hub.coin_conversion matches ..4 run return run function exigence:hub/convert_money/finish_converting
execute if score @s hub.coin_conversion matches 5.. run function exigence:hub/convert_money/slow/convert_coin
