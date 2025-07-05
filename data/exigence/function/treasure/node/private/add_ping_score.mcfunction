# Add to ping score for specific source

## CONSTRAINTS
#   AS player

## INPUT
#   STR resolving

#================================================================================================================

# DEBUG
#$say Pinging $(resolving)

$scoreboard players add @s cr_treasureping_$(resolving) 1
$scoreboard players add @s t_treasureping_$(resolving) 1
