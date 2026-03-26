# Loads all shop menus, called when player enters the shop

## CONSTRAINTS
#   AS player
#   AT center of item shop ( -43.5 200.0 0.5 )
#   IN exigence:hub

#====================================================================================================

# DEBUG
say Load item shop

#====================================================================================================
## LOAD CHESTS
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
# Get data
execute in exigence:profile_data positioned 8 128 8 as @e[distance=..140,type=marker,tag=ProfileNode] if score @s profile.node.profile_id = #compare profile.player.profile_id \
run function exigence:profile/profile_node/load/try_chest_to_data

execute unless score #data_loaded Temp matches 1 run tellraw @s [{text:"[CHESTS NOT LOADED] ",bold:true,color:"yellow"},{text:"Another player has already loaded the chests for this co-op profile.",color:"gray",italic:true,bold:false}]

# Fill chests (if data was loaded successfully)
execute if score #data_loaded Temp matches 1 positioned -27.5 200.0 0.5 run function exigence:hub/item_shop/load/load_chests

#====================================================================================================

# Load deck analyzer menu
scoreboard players operation #profile_id Temp = @s profile.player.profile_id
scoreboard players operation #coop_profile_id Temp = @s profile.player.coop_profile_id
execute positioned -27.5 200.0 0.5 positioned ~ ~ ~-3.49 rotated 0 0 run function exigence:hub/item_shop/load/setup_deck_analyzer

# Update purchasability
function exigence:hub/item_shop/update_purchasability_full

# Load menus
scoreboard players set #cancel_item_shop_iterate Temp 0
scoreboard players set #i Temp 1
schedule function exigence:hub/item_shop/load/load_handler/schedule 10t
