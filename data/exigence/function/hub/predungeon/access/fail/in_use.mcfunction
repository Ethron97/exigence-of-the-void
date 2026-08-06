# Fail because in use

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

tellraw @s [{text:"✖ The Predungeon is in use",color:"red"}]
function exigence:hub/predungeon/access/fail/bounce

# Knock
scoreboard players set @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,scores={hub.room.room_type=2},tag=RoomNode] hub.room.knock 1
