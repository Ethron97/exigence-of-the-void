# Convert money instantly without any sort of animation
#   Alternative function so if a disconnected player somehow logs in at the EXACT moment another player is converting
#   coins, there is no interuption

## CONSTRAINTS
#   AS player

#===========================================================================================================

# DEBUG
#say Convert money alt

tag @a[tag=ConvertingCoinsAlt] remove ConvertingCoinsAlt
tag @s add ConvertingCoinsAlt

# Reset scores
scoreboard players set coins.converted hub.coin_conversion_alt 0
scoreboard players set money.converted hub.coin_conversion_alt 0

# Start recursion
execute if score coins.converting hub.coin_conversion_alt matches 5.. run function exigence:hub/convert_money/instant_alt/private/loop
execute if score coins.converting hub.coin_conversion_alt matches ..4 run tag @a[tag=ConvertingCoinsAlt] remove ConvertingCoinsAlt
