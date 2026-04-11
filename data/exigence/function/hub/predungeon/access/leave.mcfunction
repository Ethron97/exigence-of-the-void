# Handle player leaving the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

#say (D3) Leaving Predungeon

tag @s remove Predungeon
team leave @s

tp @s ~ ~-3 ~-66
playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Remove interaction
function exigence:hub/predungeon/node/kill_interaction

scoreboard players reset @s hub.player.consumable_limit
scoreboard players reset @s shop.player.looking_at_idid
scoreboard players reset @s DisableCurrencyWarning

#====================================================================================================
# Remove THIS player from room node
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare hub.player.room_id = @s hub.player.room_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #compare career.player_id run scoreboard players reset @s player.node.room_id
scoreboard players reset @s hub.player.room_id

# CHECK IF THERE ARE OTHER PLAYERS ON THE ROOM NODE
scoreboard players set #other_players Temp 0
#   If yes, earlyu return so we don't kill the room node/unload the room
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s player.node.room_id = #compare hub.player.room_id \
run scoreboard players set #other_players Temp 1

#   Also reset to the pre-button menu if there are other players in the room
execute if score #other_players Temp matches 1 unless score #predungeon_state Temp matches 0 positioned 0.5 209.0 104.5 \
as @n[type=marker,tag=PredungeonMenuNode,distance=..10] at @s run function exigence:hub/predungeon/menu/display/back_to_prebutton

execute if score #other_players Temp matches 1 run return 0
#----------------------------------------------------------------------------------------------------

# If this player was the last one, kill room node and unload room
execute in exigence:hub positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/node/unload_room
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=marker,tag=RoomNode] if score @s hub.room.room_id = #compare hub.player.room_id run kill @s
