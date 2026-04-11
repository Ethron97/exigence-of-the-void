# Handle player entering the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

#say (D3) Entering predungeon (COOP)

tag @s add Predungeon
team join Predungeon @s

tp @s ~ ~3 ~65.5
playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Store ids
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
 
# Summon interaction
execute at @s run function exigence:hub/predungeon/node/setup_interaction

# Initialize item limit upon entering
function exigence:player/utility/calculate_item_limit

#====================================================================================================
# Assign room ids
execute in exigence:hub run scoreboard players operation #compare hub.entity.room_id \
= @n[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=2},tag=RoomNode] hub.room.room_id
#   PLAYER
scoreboard players operation @s hub.player.room_id = #compare hub.entity.room_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.room_id = #compare hub.entity.room_id
