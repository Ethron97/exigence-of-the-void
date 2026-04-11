# Summon new room node, constructor

## CONSTRAINTS
#   IN exigence:hub
#   AT 100 200 100

## INPUT
#   SCORE #room_type Temp

#====================================================================================================

#say (D3) New room node

# summon minecraft:marker at fact location
summon minecraft:marker ~ ~ ~ {Tags:["NewRoomNode","RoomNode"],CustomName:[{text:"Marker | RoomNode",color:"#6dc532"},{text:"e",color:"#4c98ee"}]}

# Generate and assign new id
execute as @n[type=marker,tag=NewRoomNode,distance=..1] run function exigence:room/node/private/data