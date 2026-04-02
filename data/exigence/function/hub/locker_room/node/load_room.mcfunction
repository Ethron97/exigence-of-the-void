# Run open/setup when first player enters the room

## CONSTRAINTS
#   AS/AT locker room node

## INPUT
#   #compare profile.player.profile_id

#====================================================================================================

say Load room (locker room)

# Generate new id
scoreboard players add #sequence hub.locker_room_id 1
scoreboard players operation @s hub.locker_room_id = #sequence hub.locker_room_id

# Update ID in the name
execute store result storage exigence:temp id int 1 run scoreboard players get #sequence hub.locker_room_id
function exigence:hub/locker_room/node/private/set_id_to_name with storage exigence:temp

#====================================================================================================
## LOAD CHESTS
scoreboard players operation @s hub.entity.profile_id = #compare profile.player.profile_id
# Get dataa
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.profile_id = #compare profile.player.profile_id \
run function exigence:profile/profile_node/load/try_chest_to_data

execute at @s unless score #data_loaded Temp matches 1 run tellraw @p[tag=LockerRoom,distance=..20] [{text:"[CHESTS NOT LOADED] ",bold:true,color:"yellow"},{text:"Another player has already loaded the chests for this co-op profile.",color:"gray",italic:true,bold:false}]

# Fill chests (if data was loaded successfully)
execute if score #data_loaded Temp matches 1 at @s run function exigence:hub/locker_room/load/load_chests

#====================================================================================================

# Load deck analyzer menu
scoreboard players operation #profile_id Temp = @s hub.entity.profile_id
scoreboard players operation #coop_profile_id Temp = @s hub.entity.coop_profile_id
execute positioned ^ ^ ^2.49 run function exigence:hub/locker_room/load/setup_deck_analyzer
