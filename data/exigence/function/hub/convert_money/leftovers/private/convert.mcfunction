# Convert coins to glint in sets of 5, recursively

## CONSTRAINTS
#   AS player if coins.leftover hub.coin_conversion >= 5

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Convert leftover

# Playsound
execute at @s run playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 1 1

# Give player one Money
function exigence:hub/convert_money/give_money

# Update scores
scoreboard players remove coins.leftover hub.coin_conversion 5
scoreboard players add #leftover hub.coin_conversion.coins_converted 5
scoreboard players add #leftover hub.coin_conversion.money_converted 1

# If not enough remaining, tellraw summary
execute if score coins.leftover hub.coin_conversion matches ..4 run function exigence:hub/convert_money/leftovers/private/done_converting

# Recurse
execute if score coins.leftover hub.coin_conversion matches 5.. run function exigence:hub/convert_money/leftovers/private/convert