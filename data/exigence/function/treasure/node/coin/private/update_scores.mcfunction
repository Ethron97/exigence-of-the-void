# Update player scores for dropping from a specific source

## CONSTRAINTS
#   AS player

## INPUT
#   STR resolving

#==========================================================================================================

# Increase source specific scores
$scoreboard players add @s cr_coindrop_$(resolving) 1
$scoreboard players add @s t_coindrop_$(resolving) 1
