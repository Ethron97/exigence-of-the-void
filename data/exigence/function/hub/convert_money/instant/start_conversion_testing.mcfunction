# Testing version so we can call this directly from the hub
# The real function gets called after a player logs in

## CONSTRAINTS
#   AS player

#====================================================================================================

# Clear gold nuggets and remember amount
# THIS IS HERE FOR TESTING, it should be called prior to this function
execute store result score @s hub.coin_conversion run clear @s minecraft:gold_nugget

# Reset scores
scoreboard players set @s hub.coin_conversion.coins_converted 0
scoreboard players set @s hub.coin_conversion.money_converted 0

# Start recursion
execute if score @s hub.coin_conversion matches 5.. run function exigence:hub/convert_money/instant/private/convert
