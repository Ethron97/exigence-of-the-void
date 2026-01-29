# Summon new Locker Room room node

## CONSTRAINTS
#   AT position, and facing

#====================================================================================================

#say New locker room node

summon minecraft:marker ~ ~ ~ {Tags:["NewMarker","Marker","LockerRoomNode"],CustomName:[{text:"Marker | LockerRoomNode",color:"#aca927"},{text:" e",color:"#fffb00"}]}

# Teleport to align and face
execute align x align y align z run tp @n[distance=..1,type=marker,tag=NewMarker] ~.5 ~ ~.5 ~ ~

# Initialize id
scoreboard players set @n[distance=..1,type=marker,tag=NewMarker] hub.locker_room_id 0

# Remove local tag
tag @n[distance=..1,type=marker,tag=NewMarker] remove NewMarker