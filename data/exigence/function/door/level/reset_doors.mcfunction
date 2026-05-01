# Load level doors

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Kill any vault key hovers
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item_display,tag=DoorHandleKey]

# Kill old door handles
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item_display,tag=Door]
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=DoorHandle]

# Reset doors
execute positioned -331.5 21.0 -257.5 as @n[type=minecraft:marker,tag=DoorNode,tag=Door1,distance=..1] at @s run function exigence:door/level/door_1/reset
execute positioned -384.5 132.0 -90.0 as @n[type=minecraft:marker,tag=DoorNode,tag=Door2,distance=..1] at @s run function exigence:door/level/door_2/reset
execute positioned -361.5 172.0 -85.0 as @n[type=minecraft:marker,tag=DoorNode,tag=Door3,distance=..1] at @s run function exigence:door/level/door_3/reset
