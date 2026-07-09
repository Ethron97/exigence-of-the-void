# Load ember shop menu
# Called once on room enter to setup the menu system

## CONSTRAINTS
#   AS player
#   AT position

## INPUT
#   INT profile_id
#   INT coop_profile_id

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Load ember shop menu node

# Load menu node
summon minecraft:marker ~ ~ ~ {Tags:["EmberShopMenuNode"]}

scoreboard players operation #compare profile.player.profile_difficulty = @s profile.player.profile_difficulty

# Copy scores
#scoreboard players operation @n[type=minecraft:marker,tag=EmberShopMenuNode,distance=..0.01] hub.entity.room_id = @s hub.player.room_id
scoreboard players operation @n[type=minecraft:marker,tag=EmberShopMenuNode,distance=..0.01] hub.entity.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. \
run scoreboard players operation @n[type=minecraft:marker,tag=EmberShopMenuNode,distance=..0.01] hub.entity.coop_profile_id = @s profile.player.coop_profile_id

# Make sure library displays are reset
function exigence:hub/ember_shop/menu/refresh/reset_library_displays
# First refresh
function exigence:hub/ember_shop/menu/refresh/refresh

# Load main card shop menu
function exigence:hub/ember_shop/menu/display/card/load
