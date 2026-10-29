# Called by misc/tick

#====================================================================================================

# Reset limbo room tick position tracker
scoreboard players set #limbo_position Temp 0

# Cleanup nodes, since we can't do it mid-executor
execute in exigence:hub run kill @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode,tag=KillMe]

# Run room tick as all rooms
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode] run function exigence:room/node/tick
