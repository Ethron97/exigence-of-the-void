# Close room, called if no players are found in the game room

## CONSTRAINTS
#   AS room node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 2.. run say (D2 Hub) Close GAME (player(s) all logged out)

scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Game loss
#execute in minecraft:overworld run function exigence:game/game_loss

# No need for timeout quueue, they should already have logout funciton queued when they individually logout

#execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode,scores={player.node.room_id=1..}] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players add @s player.node.queue 1
#execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode,scores={player.node.room_id=1..}] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players add @s player.node.queue.logout_game 1
