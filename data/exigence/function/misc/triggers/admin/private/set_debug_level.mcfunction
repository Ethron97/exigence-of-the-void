# Set debug level then re-call trigger debug menu

## CONTRAINTS
#   AS player

## INPUT
#   INT level

#====================================================================================================

$scoreboard players set debug.level debug $(level)

$tellraw @s [{text:"Set debug level to ",color:"gray"},{text:"$(level)",color:"green"}]

# Reopn with updated switches
function exigence:misc/triggers/admin/debug_menu