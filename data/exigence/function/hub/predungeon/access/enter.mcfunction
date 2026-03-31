# Handle player entering the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

say Entering predungeon

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
# Summon Room Node
scoreboard players set #room_type Temp 2
execute in exigence:hub positioned 0 153 0 run function exigence:room/node/new

# Assign room ids
#   Add profile_id/coop_profile_id to the room node
execute in exigence:hub positioned 0 153 0 \
run scoreboard players operation @n[type=marker,scores={hub.room.room_type=2},tag=RoomNode,distance=..1] hub.entity.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. in exigence:hub positioned 0 153 0 \
run scoreboard players operation @n[type=marker,scores={hub.room.room_type=2},tag=RoomNode,distance=..1] hub.entity.coop_profile_id = @s profile.player.coop_profile_id
#   PLAYER/NODE
scoreboard players operation @s hub.player.room_id = #next hub.room.room_id
execute in exigence:profile_data positioned 8 3 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.room_id = #next hub.room.room_id

#====================================================================================================
# Load room
execute positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/node/load_room