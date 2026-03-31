# Close room, typically after timeout ends

## CONSTRAINTS
#   AS room node

#====================================================================================================

say Close predungeon (player timed out)

scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Close the room down
execute in exigence:hub positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/node/unload_room

# Add queued functions to player node(s)
execute in exigence:profile_data positioned 8 0 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players add @s player.node.queue 1
execute in exigence:profile_data positioned 8 0 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players add @s player.node.queue.timeout_predungeon 1
