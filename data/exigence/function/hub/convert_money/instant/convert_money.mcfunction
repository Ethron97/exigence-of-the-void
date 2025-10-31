# Convert money instantly without any sort of animation

# Reset scores
scoreboard players set coins.converted hub.coin_conversion 0
scoreboard players set money.converted hub.coin_conversion 0

# Start recursion
execute if score coins.converting hub.coin_conversion matches 5.. run function exigence:hub/convert_money/instant/private/loop
execute if score coins.converting hub.coin_conversion matches ..4 run tag @a[tag=ConvertingCoins] remove ConvertingCoins
