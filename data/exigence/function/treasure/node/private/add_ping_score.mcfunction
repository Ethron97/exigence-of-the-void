# Add to ping score for specific source

## CONSTRAINTS
#   AS player

## INPUT
#   STR resolving

#================================================================================================================

# DEBUG
#$say Pinging $(resolving)

$scoreboard players add @s profile.data.treasure.cr.ping_$(resolving) 1
