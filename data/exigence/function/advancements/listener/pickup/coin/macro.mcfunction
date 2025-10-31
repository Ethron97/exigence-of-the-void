# Add to scores

## CONSTRAINTS
#   AS player

## INPUT
#   STR source

#================================================================================================================

$scoreboard players operation @s profile.data.treasure.cr.coinpickup_$(source) += #stacksize game.treasure.picked_up_coin_handle
