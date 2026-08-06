# Ping room
# Called every second from room tick if at least one player in this room is online

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Check if card shop is occupied
# If yes, knock it (if it is at threshold, that way if this limbo guy logs off it doesn't kick other person for no reasons)
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=5}] if score @s hub.room.current_timer >= @s hub.room.expire_threshold run scoreboard players set @s hub.room.knock 1

# If not occupied, migrate room to card shop
execute in exigence:hub unless entity @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=5}] run function exigence:hub/limbo/node/migrate_to_card_shop
