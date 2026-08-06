# Called whenever a player logs in with the LIMBO tag
#   Important that gets called AFTER queued functions, because if they logged out while in the
#   escaped-but-still-in-game, that gets handled in queued functions so this would not trigger twice

## CONSTRAINTS
#   AS player (tag=Limbo)

#====================================================================================================

# If player is in LIMBO, check if their room node migrated without them:
scoreboard players operation #compare hub.player.room_id = @s hub.player.room_id

scoreboard players set #temp Temp 0
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,scores={hub.room.room_type=5},tag=RoomNode] \
if score @s hub.room.room_id = #compare player.node.room_id run scoreboard players set #temp Temp 1

execute if score #temp Temp matches 1 run function exigence:hub/ember_shop/access/enter
