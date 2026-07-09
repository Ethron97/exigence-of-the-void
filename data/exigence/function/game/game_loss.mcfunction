# Called from detect_game_state

#====================================================================================================

say Defeat!

# Play sad sound
execute in exigence:hub run playsound minecraft:entity.ravager.celebrate hostile @a 12.5 299.0 -11.5 1000 1

# Teleport players to hub
execute as @a[tag=ActivePlayer] in exigence:hub run tp @s 12.5 199.0 -11.5

# Main title
title @a[tag=ActivePlayer] title [{text:"Defeat",color:"red"}]

# Clear inventory
clear @a[tag=ActivePlayer] #exigence:loss_clear

#====================================================================================================
# Get room id of the game room node
scoreboard players set #compare hub.room.room_id 0
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=3}] run scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Break player node link
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players reset @s player.node.room_id

# Break link for players online
scoreboard players reset @a[tag=ActivePlayer] hub.player.room_id

# Kill room node
execute in exigence:hub run kill @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=3}]

#====================================================================================================

# Turn off the game
execute in minecraft:overworld run function exigence:game/game_off

# Schedule coin convert so its after the victory sound
#   Player scores were gathered from the access/leave function
schedule function exigence:game/unload/schedule_coin_conversions 40t