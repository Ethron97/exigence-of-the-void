# Ping room
# Called every second from room tick if at least one player in this room is online

## CONSTRAINTS
#   AS room node

#====================================================================================================

# If not occupied, migrate room to card shop
execute in exigence:hub unless entity @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=5}] run return run function exigence:hub/limbo/node/migrate_to_card_shop
#----------------------------------------------------------------------------------------------------
# Else if occupied

# Increase queue position
scoreboard players add #limbo_position Temp 1

# If queue position is 0, actionbar how much time is left for them
# If queue position is 1>, actionbar how many people are in queue before you
scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id
execute as @a if score @s hub.player.room_id = #compare hub.room.room_id run title @s actionbar [{text:"Ember Shop Occupied. Place in queue: "},{score:{name:"#limbo_position",objective:"Temp"},color:"gold"}]

# Check if card shop is occupied
# If yes, knock it (if it is at threshold, that way if this limbo guy logs off it doesn't kick other person for no reasons)
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=5}] if score @s hub.room.current_timer >= @s hub.room.expire_threshold run scoreboard players set @s hub.room.knock 1

execute as @a[tag=Limbo] at @s if entity @s[y=-100,dy=100] run tp @s -1000.5 100.0 -1000.5
