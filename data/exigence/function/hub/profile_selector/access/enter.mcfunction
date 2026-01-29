# Handle player entering the room

## CONSTRAINTS
#   AS player
#   AT ProfileSelector node

#====================================================================================================

say Entering profile selector

tag @s add ProfileSelecting

tp @s ~ ~ ~5 180 0 
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Join team (to hide nametag)
team join ProfileSelecting @s

# Enforce player node exists
scoreboard players add @s career.player_id 0
execute unless score @s career.player_id matches 1.. in exigence:profile_data positioned 8 3 8 run function exigence:profile/player_node/new_player

# Store ids
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare profile.node.profile_id = @s profile.player.profile_id

# Load room as chosen profile selector node (validation done in previous function)
execute as @n[distance=..1,tag=ProfileSelectorNode] at @s run function exigence:hub/profile_selector/node/load_room

scoreboard players operation @s hub.player.profile_selector_id = @n[distance=..1,tag=ProfileSelectorNode] hub.profile_selector_id

#====================================================================================================
# Summon Room Node
scoreboard players set #room_type Temp 10
execute in exigence:hub positioned 0 153 0 run function exigence:room/node/new

# Assign room ids
#   PLAYER
scoreboard players operation @s hub.player.room_id = #next hub.room.room_id
execute in exigence:profile_data positioned 8 3 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.room_id = #next hub.room.room_id
#   FK (link room node to specific room node)
scoreboard players operation @n[distance=..1,tag=ProfileSelectorNode] hub.entity.room_id = #next hub.room.room_id
