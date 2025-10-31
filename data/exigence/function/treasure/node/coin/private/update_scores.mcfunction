# Update player scores for dropping from a specific source

## CONSTRAINTS
#   AS player

## INPUT
#   STR resolving

#==========================================================================================================

# Increase source specific scores
$scoreboard players add @s profile.data.treasure.cr.coindrop_$(resolving) 1
