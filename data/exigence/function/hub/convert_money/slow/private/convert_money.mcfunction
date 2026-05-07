# Called from convert_coin if multiple of 5

## CONSTRAINTS
#   AS player

#====================================================================================================

scoreboard players add @s hub.coin_conversion.money_converted 1

# Give player one Money
function exigence:hub/convert_money/give_money

# Playsound
execute at @s run playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 1 1
