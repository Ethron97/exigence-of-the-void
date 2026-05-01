#  When a player attempts to enter the tutorial from the hub

## CONSTRAINTS
# Call as player

#====================================================================================================

# DEBUG
#say (D3) Try enter tutorial

execute in exigence:hub if entity @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,scores={hub.room.room_type=1},tag=RoomNode] at @s run return run function exigence:tutorial/access/fail/in_use
#----------------------------------------------------------------------------------------------------

# Check that player has empty inventory
execute store result score #temp Temp run clear @s * 0
execute if score #temp Temp matches 1.. run tellraw @s [{text:"Put away your items before entering the tutorial",color:"red"}]
execute if score #temp Temp matches 1.. run tp @s 3.5 195.0 -64.5 -90 0
execute if score #temp Temp matches 1.. run return fail
#----------------------------------------------------------------------------------------------------

# If all checks passed, enter tutorial
execute in exigence:tutorial run function exigence:tutorial/access/enter_tutorial
