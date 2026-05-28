# Generic function to call after a converting finishes

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Finish converting

# Reset tags
tag @s remove QueueCoinConversion
tag @s remove ConvertingCoins
tag @s remove SlowConversion

# Reset scores
scoreboard players reset @s hub.coin_conversion
scoreboard players reset @s hub.coin_conversion.leftover_coins
scoreboard players reset @s hub.coin_conversion.glint_owed
scoreboard players reset @s hub.coin_conversion.coins_converted
scoreboard players reset @s hub.coin_conversion.money_converted