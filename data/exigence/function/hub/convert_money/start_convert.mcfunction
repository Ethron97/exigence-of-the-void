# Called 1 second after game off, regardless of win or loss

## CONSTRAINTS
#   AS player
#       All coin converion scores should have been taken care of on game completion

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3) Start convert coins (general)

# Remove queue tag
tag @s remove QueueCoinConversion

# If player doesn't have any coins to convert, return
#   If there are leftovers, give them to this player then clear leftovers
execute unless score @s hub.coin_conversion matches 5.. if score coins.leftover hub.coin_conversion matches 5.. run function exigence:hub/convert_money/leftovers/start_conversion
execute unless score @s hub.coin_conversion matches 5.. run return run scoreboard players reset @s hub.coin_conversion
#----------------------------------------------------------------------------------------------------

# Change title speed (remove fade-in to avoid flickering)
title @s times 0t 70t 20t

# Add tag
tag @s add ConvertingCoins
# ConvertingCoins tag only gets removed when conversion is done, or if player logs in with glint owed

# Choose conversion style based on setting
execute if score @s career.settings.coin_conversion_style matches 0 run function exigence:hub/convert_money/instant/start_conversion
execute if score @s career.settings.coin_conversion_style matches 1 run function exigence:hub/convert_money/quick/start_conversion
execute if score @s career.settings.coin_conversion_style matches 2 run function exigence:hub/convert_money/slow/start_conversion
