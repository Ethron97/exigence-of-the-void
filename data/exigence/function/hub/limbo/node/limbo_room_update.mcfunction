# Ping room
# Called every second from room tick if at least one player in this room is online

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Check if card shop is occupied
# If not occupied, migrate room to card shop
execute in exigence:hub unless entity @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=5}] run function exigence:hub/limbo/node/migrate_to_card_shop
