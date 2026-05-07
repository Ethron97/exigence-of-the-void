# Spawn coin items in front of player

## CONSTRAINTS
#   AS player

#====================================================================================================

#say Item smash convert

# Generate conversion id to tie player to spawned items

# If the player logs out mid-conversion, just delete all the entities


# Reset scores
scoreboard players set coins.converted hub.coin_conversion 0
scoreboard players set money.converted hub.coin_conversion 0
scoreboard players set smash.batch hub.coin_conversion.math 0
scoreboard players set lowest.smash.batch hub.coin_conversion.math 0

# Summon ConvertMoneyCoinDisplays iteration function
scoreboard players operation #i hub.coin_conversion = coins.converting hub.coin_conversion
execute if score #i hub.coin_conversion matches 0 run tag @a[tag=ConvertingCoins] remove ConvertingCoins
execute if score #i hub.coin_conversion matches 1.. run function exigence:hub/convert_money/item_smash/private/summon_coin_item
# (Smashing starts once all coins are summoned)