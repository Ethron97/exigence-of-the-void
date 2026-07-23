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
function exigence:hub/ember_shop/menu/refresh/refresh_all

#====================================================================================================
## SUMMON MENU ELEMENTS
# Summon refresh button
execute positioned ~ ~0.5 ~-1.5 run function exigence:hub/ember_shop/menu/display/refresh_button/summon_refresh_button
execute positioned ~-0.01 ~0.1 ~-1.5 run function exigence:hub/ember_shop/menu/display/refresh_button/cost_display/summon_refresh_cost

# Summon rarity selection buttons
execute if score shop.difficulty ember_shop matches 1.. positioned ~ ~0.25 ~1.05 run function exigence:hub/ember_shop/menu/display/rarity_selector/load/summon_rarity_selector_1
execute if score shop.difficulty ember_shop matches 2.. positioned ~ ~0.25 ~1.35 run function exigence:hub/ember_shop/menu/display/rarity_selector/load/summon_rarity_selector_2
execute if score shop.difficulty ember_shop matches 3.. positioned ~ ~0.25 ~1.65 run function exigence:hub/ember_shop/menu/display/rarity_selector/load/summon_rarity_selector_3
execute if score shop.difficulty ember_shop matches 4.. positioned ~ ~0.25 ~1.95 run function exigence:hub/ember_shop/menu/display/rarity_selector/load/summon_rarity_selector_4
execute positioned ~-0.01 ~0.45 ~1.5 run function exigence:hub/ember_shop/menu/display/rarity_selector/load/summon_title

# Initialize highest rarity button as selected
#   Displays first card set and sets refresh cost
execute if score shop.difficulty ember_shop matches 1 as @n[type=minecraft:item_display,tag=RaritySelector,tag=Common,distance=..5] run function exigence:hub/ember_shop/menu/display/rarity_selector/select_rarity
execute if score shop.difficulty ember_shop matches 2 as @n[type=minecraft:item_display,tag=RaritySelector,tag=Uncommon,distance=..5] run function exigence:hub/ember_shop/menu/display/rarity_selector/select_rarity
execute if score shop.difficulty ember_shop matches 3 as @n[type=minecraft:item_display,tag=RaritySelector,tag=Rare,distance=..5] run function exigence:hub/ember_shop/menu/display/rarity_selector/select_rarity
execute if score shop.difficulty ember_shop matches 4.. as @n[type=minecraft:item_display,tag=RaritySelector,tag=Legendary,distance=..5] run function exigence:hub/ember_shop/menu/display/rarity_selector/select_rarity

