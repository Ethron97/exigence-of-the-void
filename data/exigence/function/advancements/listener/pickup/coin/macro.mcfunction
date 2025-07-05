# Add to scores

## CONSTRAINTS
#   AS player

## INPUT
#   STR source

#================================================================================================================

$scoreboard players operation @s cr_coinpickup_$(source) += #stacksize cr_coinsPickedUp
$scoreboard players operation @s t_coinpickup_$(source) += #stacksize cr_coinsPickedUp
