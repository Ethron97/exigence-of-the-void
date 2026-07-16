# Loads ember shop, called when player enters ember shop for first time
# Called from limbo node migrate function

## CONSTRAINTS
#   AS player (in coop, arbitrarily pick one)
#   AT center of ember shop ( 45.5 209.0 0.5 )
#   IN exigence:hub

## INPUT
#   SCORE #compare hub.room.room_id

#====================================================================================================

# DEBUG
execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Load ember shop

# Set scores
scoreboard players set shop.loaded ember_shop 1
scoreboard players set shop.embers_to_spend ember_shop 0

scoreboard players operation shop.difficulty ember_shop = #shop.difficulty ember_shop
scoreboard players operation shop.bonus_slots ember_shop = #shop.bonus_slots ember_shop
scoreboard players operation shop.refresh_modifier ember_shop = #shop.refresh_modifier ember_shop
#...

# Get embers from all players
execute as @a[scores={hub.player.room_id=1..}] if score @s hub.player.room_id = #compare hub.room.room_id \
run scoreboard players operation shop.embers_to_spend ember_shop += @s hub.player.embers_retrieved

#====================================================================================================
## LOAD CHESTS
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
# Get data
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.profile_id = #compare profile.player.profile_id \
run function exigence:profile/profile_node/load/try_chest_to_data

execute unless score #data_loaded Temp matches 1 run tellraw @s [{text:"[CHESTS NOT LOADED] ",bold:true,color:"yellow"},{text:"Another player has already loaded the chests for this co-op profile.",color:"gray",italic:true,bold:false}]

# Fill chests (if data was loaded successfully)
execute if score #data_loaded Temp matches 1 run function exigence:hub/ember_shop/load/load_chests

#====================================================================================================

# Load deck analyzer menu
scoreboard players operation #profile_id Temp = @s profile.player.profile_id
scoreboard players operation #coop_profile_id Temp = @s profile.player.coop_profile_id
execute positioned ~ ~ ~-7.49 rotated 0 0 summon marker run function exigence:hub/ember_shop/load/setup_deck_analyzer

#====================================================================================================

# Load main menu
execute positioned ~5.49 ~ ~ run function exigence:hub/ember_shop/menu/load_menu

# Update bossbar
function exigence:bossbar/ember_shop/update