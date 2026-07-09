# Enter player

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3) Enter limbo

execute in exigence:hub run tp @s -1000.5 100 -1000.5
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~1000 ~ 1000 1

tag @s add Limbo

# Update bossbar visibility
function exigence:bossbar/limbo/update_visibility