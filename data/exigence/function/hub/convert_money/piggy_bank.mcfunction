# Called by each convert type when they finish if player has piggy bank

## CONSTRAINTS
#   AS player that has a piggy bank in their inventory

#=================================================================================

# Modulo 5 and add leftovers to piggy bank
scoreboard players operation #ToPiggyBank CoinsToConvert = Coins CoinsToConvert
scoreboard players operation #ToPiggyBank CoinsToConvert %= 5 number
scoreboard players operation @s PiggyBank += #ToPiggyBank CoinsToConvert
tellraw @a [{text:"Added ",color:"gray"},{"score":{"name":"#ToPiggyBank","objective":"CoinsToConvert"},color:"gold"},{text:" 🔘 ",color:"gold"},{text:"to piggy bank",color:"gray"}]
