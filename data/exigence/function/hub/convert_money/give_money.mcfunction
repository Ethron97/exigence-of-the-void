# Give player money and increase score

## CONSTRAINTS
#   AS player

#====================================================================================================

# Increase money gained score
scoreboard players add @s profile.data.treasure.money_from_coins 1

# Give money item
function exigence:player/give/money