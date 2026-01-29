# Store player head information in temp storage

## CONSTRAINTS
#   AS player node

## OUTPUT
#   # SCORE #room_type Temp
#   # SCORE #room_id Temp

#====================================================================================================

scoreboard players operation #compare player.node.room_id = @s player.node.room_id

execute in exigence:hub positioned 0 153 0 as @e[distance=..1,type=marker,tag=RoomNode] \
if score @s hub.room.room_id = #compare player.node.room_id run scoreboard players operation #room_type Temp = @s hub.room.room_type

scoreboard players operation #room_id Temp = @s player.node.room_id