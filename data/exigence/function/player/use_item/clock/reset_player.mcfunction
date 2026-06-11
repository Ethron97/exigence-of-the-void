# Called when player dies or enters a vault chamber

## CONSTRAINTS
#   AS player

#====================================================================================================

## SWITCH
execute if score @s game.player.player_number matches 1 run return \
run kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ClockMarker,scores={game.entity.player_number=1}]

execute if score @s game.player.player_number matches 2 run return \
run kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ClockMarker,scores={game.entity.player_number=2}]

execute if score @s game.player.player_number matches 3 run return \
run kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ClockMarker,scores={game.entity.player_number=3}]

execute if score @s game.player.player_number matches 4 run return \
run kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ClockMarker,scores={game.entity.player_number=4}]