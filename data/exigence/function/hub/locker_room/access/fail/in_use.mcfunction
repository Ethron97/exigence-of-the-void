# Fail because no profile

## CONSTRAINTS
#   AS player
#   AT locker room node

#====================================================================================================

tellraw @s {text:"This Locker Room is in use",color:"red"}
function exigence:hub/locker_room/access/fail/bounce

# If all locker rooms are in use, knock one
scoreboard players set #temp Temp 0
execute as @e[x=-29,y=197,z=6,dx=24,dy=8,dz=24,type=minecraft:marker,tag=LockerRoomNode,scores={hub.locker_room_id=0}] run scoreboard players add #temp Temp 1

# Return if at least one is not in use
execute if score #temp Temp matches 1.. run return 0
#----------------------------------------------------------------------------------------------------
# If #temp Temp = 0, knock the one with the highest timer

# Get highest timer
scoreboard players set #highest Temp 0
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode,scores={hub.room.room_type=11}] \
run scoreboard players operation #highest Temp = @s hub.room.current_timer
# Knock exactly one
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode,scores={hub.room.room_type=11}] \
if score @s hub.room.current_timer = #highest Temp run return run scoreboard players set @s hub.room.knock 1
