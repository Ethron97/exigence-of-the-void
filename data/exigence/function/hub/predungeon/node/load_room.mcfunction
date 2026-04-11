# Loads predungeon, called when player enters predungeon for first time

## CONSTRAINTS
#   AS player
#   AT center of predungeon ( 0.5 209.0 104.5 )
#   IN exigence:hub

#====================================================================================================

# DEBUG
#say (D3) Load predungeon

fill 1 207 35 -1 209 35 minecraft:air

#====================================================================================================
## LOAD CHESTS
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
# Get data
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.profile_id = #compare profile.player.profile_id \
run function exigence:profile/profile_node/load/try_chest_to_data

execute unless score #data_loaded Temp matches 1 run tellraw @s [{text:"[CHESTS NOT LOADED] ",bold:true,color:"yellow"},{text:"Another player has already loaded the chests for this co-op profile.",color:"gray",italic:true,bold:false}]

# Fill chests (if data was loaded successfully)
execute if score #data_loaded Temp matches 1 run function exigence:hub/predungeon/load/load_chests

#====================================================================================================

# Load deck analyzer menu
scoreboard players operation #profile_id Temp = @s profile.player.profile_id
scoreboard players operation #coop_profile_id Temp = @s profile.player.coop_profile_id
execute positioned ~-6.49 ~ ~ rotated -90 0 summon marker run function exigence:hub/predungeon/load/setup_deck_analyzer

# Load predungeon menu
execute positioned ~ ~ ~5.49 run function exigence:hub/predungeon/menu/load_menu

# Initialize "state"
scoreboard players set #predungeon_state Temp 0