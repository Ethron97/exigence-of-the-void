# Handle player getting kicked from the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Kicking from ember shop

tag @s remove EmberShop
team leave @s

# Update bossbar visibility
function exigence:bossbar/ember_shop/update_visibility

execute in exigence:hub run tp @s 38.5 200.0 0.5
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~1000 ~ 1000 1

# Remove interaction
function exigence:hub/ember_shop/node/kill_interaction

scoreboard players reset @s shop.player.looking_at_idid
