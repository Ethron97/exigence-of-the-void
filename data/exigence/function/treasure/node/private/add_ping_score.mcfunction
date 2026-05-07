# Add to ping score for specific source

## CONSTRAINTS
#   AS player

## INPUT
#   STR resolving

#====================================================================================================

# DEBUG
$execute if score toggle.treasure debug matches 1 if score debug.level debug matches 3.. run say (D3) $(resolving)

$scoreboard players add @s profile.data.treasure.cr.ping_$(resolving) 1
