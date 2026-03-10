# Handle player entering the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

say Entering item shop

tag @s add ItemShop
tag @s add RefreshSource
team join ItemShop @s

tp @s ~-3 ~ ~
playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Store ids
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id

# Load room
execute positioned -43.5 200.0 0.5 run function exigence:hub/item_shop/node/load_room

# Summon interaction
function exigence:hub/item_shop/node/setup_interaction

#====================================================================================================
# Summon Room Node
scoreboard players set #room_type Temp 4
execute in exigence:hub positioned 0 153 0 run function exigence:room/node/new

# Assign room ids
#   Add profile_id/coop_profile_id to the room node
execute in exigence:hub positioned 0 153 0 \
run scoreboard players operation @n[distance=..1,type=marker,tag=RoomNode,scores={hub.room.room_type=4}] hub.entity.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. in exigence:hub positioned 0 153 0 \
run scoreboard players operation @n[distance=..1,type=marker,tag=RoomNode,scores={hub.room.room_type=4}] hub.entity.coop_profile_id = @s profile.player.coop_profile_id
#   PLAYER/NODE
scoreboard players operation @s hub.player.room_id = #next hub.room.room_id
execute in exigence:profile_data positioned 8 3 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.room_id = #next hub.room.room_id

tag @s remove RefreshSource