# Handle player leaving the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

#say (D3) Leaving Item Shop

tag @s remove ItemShop
team leave @s

tp @s ~3 ~ ~
playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Remove interaction
function exigence:hub/item_shop/node/kill_interaction

scoreboard players reset @s hub.player.consumable_limit
scoreboard players reset @s shop.player.looking_at_idid

#====================================================================================================
# Remove THIS player from room node
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare hub.player.room_id = @s hub.player.room_id

execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] \
if score @s profile.node.player_id = #compare career.player_id run scoreboard players reset @s player.node.room_id
scoreboard players reset @s hub.player.room_id

# CHECK IF THERE ARE OTHER PLAYERS ON THE ROOM NODE
#   If yes, earlyu return so we don't kill the room node/unload the room
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] if score @s player.node.room_id = #compare hub.player.room_id \
run return 0
#----------------------------------------------------------------------------------------------------

# If this player was the last one, kill room node and unload room
execute in exigence:hub positioned -43.5 200.0 0.5 run function exigence:hub/item_shop/node/unload_room
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=marker,tag=RoomNode] if score @s hub.room.room_id = #compare hub.player.room_id run kill @s
