# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Run timeout game (when they log back in)

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.logout_game

# Get room id
scoreboard players operation #compare hub.player.room_id = @s hub.player.room_id

# Call approciate function based on room state
#====================================================================================================

#   ROOM NODE ID NOT EXISTS: (solo, or finished coop)
scoreboard players set #found_room_node Temp 0
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode] \
if score @s hub.room.room_id = #compare hub.player.room_id run scoreboard players set #found_room_node Temp 1

execute if score #found_room_node Temp matches 0 run say Run timeout game case: ROOM NODE ID NOT EXIST
execute if score #found_room_node Temp matches 0 run return run function exigence:game/access/kick
#----------------------------------------------------------------------------------------------------

#   GAME IS STILL RUNNING (CO-OP):
scoreboard players set #found_room_node Temp 0
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode,scores={hub.room.room_type=3}] \
if score @s hub.room.room_id = #compare hub.player.room_id run scoreboard players set #found_room_node Temp 1

execute if score #found_room_node Temp matches 1 run say Run timeout game case: GAME IS STILL RUNNING
execute if score #found_room_node Temp matches 1 run return run function exigence:game/access/resume
#----------------------------------------------------------------------------------------------------

#   GAME IS IN LIMBO MODE (Logged out while it was GAME, logged in when it is LIMBO)
scoreboard players set #found_room_node Temp 0
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode,scores={hub.room.room_type=4}] \
if score @s hub.room.room_id = #compare hub.player.room_id run scoreboard players set #found_room_node Temp 1

execute if score #found_room_node Temp matches 1 run say Run timeout game case: GAME IN LIMBO MODE
# Kick from game and join limbo if not already in limbo (would only happen if player was mid-escape waiting for their coop members)
execute if score #found_room_node Temp matches 1 if entity @s[tag=ActivePlayer] run function exigence:game/access/kick
execute if score #found_room_node Temp matches 1 if entity @s[tag=!Limbo] run function exigence:hub/limbo/access/enter
execute if score #found_room_node Temp matches 1 run return 0
#----------------------------------------------------------------------------------------------------

#    GAME IS IN EMBER SHOP MODE (Logged out while it was GAME, logged in when it is EMBER SHOP)
scoreboard players set #found_room_node Temp 0
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode,scores={hub.room.room_type=5}] \
if score @s hub.room.room_id = #compare hub.player.room_id run scoreboard players set #found_room_node Temp 1

execute if score #found_room_node Temp matches 1 run say Run timeout game case: GAME IN EMBER SHOP MODE
execute if score #found_room_node Temp matches 1 run function exigence:game/access/kick
execute if score #found_room_node Temp matches 1 run return run function exigence:hub/ember_shop/access/enter
#----------------------------------------------------------------------------------------------------

# TEMP just kick them if we got here (if they are still in the game)
execute if entity @s[tag=ActivePlayer] run function exigence:game/access/kick
