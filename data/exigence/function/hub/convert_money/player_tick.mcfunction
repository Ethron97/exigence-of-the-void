# Called from hub_tick_player if player is ConvertingCoins

## CONSTRAINTS
#   AS player

#====================================================================================================

# Call sub tick function based on setting
execute if score @s hub.coin_conversion matches 1.. if score @s career.settings.coin_conversion_style matches 2 run function exigence:hub/convert_money/slow/convert_coin

# Only tick every other tick for slow
scoreboard players operation #temp Temp = seconds.cooldown tick_counter
scoreboard players operation #temp Temp %= 2 number
execute if score #temp Temp matches 0 run return 0
#----------------------------------------------------------------------------------------------------

execute if score @s hub.coin_conversion matches 5.. if score @s career.settings.coin_conversion_style matches 1 run function exigence:hub/convert_money/quick/convert
