# Called when a player attempts to enter a profile selector and there was no available slot (from a door)

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport player back one
execute at @s run tp @s ~3 ~ ~

# Playsound 
execute at @s run playsound minecraft:entity.enderman.hurt ambient @s ~ ~1000 ~ 1000 1

# Message
tellraw @s {text:"All Profile Selector rooms are currently full. One will open in 60 seconds.",color:"red"}

# Get highest timer
scoreboard players set #highest Temp 0
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode,scores={hub.room.room_type=10}] \
run scoreboard players operation #highest Temp = @s hub.room.current_timer
# Knock exactly one
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode,scores={hub.room.room_type=10}] \
if score @s hub.room.current_timer = #highest Temp run return run scoreboard players set @s hub.room.knock 1
