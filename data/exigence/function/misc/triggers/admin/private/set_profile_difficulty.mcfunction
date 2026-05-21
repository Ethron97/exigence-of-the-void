# Set profile difficulty then re-call trigger admin game menu

## CONTRAINTS
#   AS player

## INPUT
#   INT level

#====================================================================================================

$scoreboard players set game.profile_difficulty game.state $(level)

$tellraw @s [{text:"Set profile difficulty to ",color:"gray"},{text:"$(level)",color:"green"}]

# Reopn with updated switches
function exigence:misc/triggers/admin/admin_game_menu