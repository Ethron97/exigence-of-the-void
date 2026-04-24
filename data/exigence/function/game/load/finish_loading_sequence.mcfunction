# Called at the end of the load sequence, to start the game

## CONSTRAINTS

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
# run tellraw @a [{text:"Dungeon load sequence cancelled",color:"red"}]
#----------------------------------------------------------------------------------------------------

say (D3) Finish loading sequence

# Try migrate players
#   get room id for predungeon room node
#   get all playuer nodes with that room id
#   try as player node player
# Assume online for now
execute as @a[tag=Predungeon] run function exigence:game/access/enter

# Migrate room node (room type: predungeon -> game)
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=2}] run scoreboard players set @s hub.room.room_type 3

# Unload predungeon
execute in exigence:hub positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/node/unload_room

# Start game if at least one player was entered
#   Otherwise, wait for player to join to Start the game
# TODO
execute in minecraft:overworld run function exigence:game/start/game_start