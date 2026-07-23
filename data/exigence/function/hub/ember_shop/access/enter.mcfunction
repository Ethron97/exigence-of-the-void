# Handle player entering the ember shop room

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Entering ember shop

# Leave limbo (players only ever join the ember shop from Limbo)
function exigence:hub/limbo/access/leave

tag @s add EmberShop
team join EmberShop @s

# Update bossbar visibility
function exigence:bossbar/ember_shop/update_visibility

execute in exigence:hub run tp @s 45.5 209.0 0.5 -90 0
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~1000 ~ 1000 1

# Summon interaction
execute at @s run function exigence:hub/ember_shop/node/setup_interaction

# If shop is already loaded, add embers
#    Required if a player was offline when ember shop got loaded
execute if score shop.loaded ember_shop matches 1 run scoreboard players operation shop.embers_to_spend ember_shop += @s hub.player.embers_retrieved
# Update bossbar
execute if score shop.loaded ember_shop matches 1 run function exigence:bossbar/ember_shop/update

# If shop is not loaded, load it
execute if score shop.loaded ember_shop matches 0 in exigence:hub positioned 45.5 209.0 0.5 run function exigence:hub/ember_shop/node/load_room
