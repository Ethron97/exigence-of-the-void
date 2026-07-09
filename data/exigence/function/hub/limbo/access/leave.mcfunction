# Leave player

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3) Leave limbo

tag @s remove Limbo

# Update bossbar visibility
function exigence:bossbar/limbo/update_visibility