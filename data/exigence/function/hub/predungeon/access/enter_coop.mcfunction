# Handle player entering the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

say Entering predungeon (COOP)

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
execute in exigence:hub positioned 0 153 0 run scoreboard players operation #compare hub.entity.room_id \
= @n[distance=..1,tag=RoomNode,scores={hub.room.room_type=2}] hub.room.room_id
#   PLAYER
scoreboard players operation @s hub.player.room_id = #compare hub.entity.room_id
execute in exigence:profile_data positioned 8 3 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.room_id = #compare hub.entity.room_id
