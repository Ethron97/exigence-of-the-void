# Convert money 1 glint per tick at a time

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Start Coin Conversion (Quick)

# Reset scores
scoreboard players set @s hub.coin_conversion.coins_converted 0
scoreboard players set @s hub.coin_conversion.money_converted 0

# Run initial conversion
execute if score @s hub.coin_conversion matches ..4 run return run function exigence:hub/convert_money/finish_converting
execute if score @s hub.coin_conversion matches 5.. run function exigence:hub/convert_money/quick/convert
