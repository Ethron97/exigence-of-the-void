# Summon new Locker Room room node

## CONSTRAINTS
#   AT position, and facing

#====================================================================================================

#say (D3) New locker room node

summon minecraft:marker ~ ~ ~ {Tags:["NewMarker","LockerRoomNode"],CustomName:[{text:"Marker | LockerRoomNode",color:"#aca927"},{text:" e",color:"#fffb00"}]}

# Teleport to align and face
execute align x align y align z run tp @n[type=minecraft:marker,tag=NewMarker,distance=..1] ~.5 ~ ~.5 ~ ~

# Initialize id
scoreboard players set @n[type=minecraft:marker,tag=NewMarker,distance=..1] hub.locker_room_id 0

# Remove local tag
tag @n[type=minecraft:marker,tag=NewMarker,distance=..1] remove NewMarker

# Manually add South or West tag based on locker room orientation
tellraw @s {text:"Don't forget to add the South or West tag"}