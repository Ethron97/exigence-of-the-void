# All player related functionalty related to leaving the tutorial

## CONSTRAINTS
#   AS Player[tag=Tutorial]

#====================================================================================================

# DEBUG
say Exit tutorial (leave)

# Tp back to spawn
execute in exigence:hub run spawnpoint @s 0 200 0
execute in exigence:hub run tp @s 3.5 195.0 -64.5 90 0

function exigence:tutorial/access/private/reset_player

# Unload tutorial
execute in exigence:tutorial run function exigence:tutorial/unload

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Remove room node
scoreboard players operation #compare hub.player.room_id = @s hub.player.room_id
execute in exigence:hub positioned 0 153 0 as @e[distance=..1,type=marker,tag=RoomNode] if score @s hub.room.room_id = #compare hub.player.room_id run kill @s
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] if score @s player.node.room_id = #compare hub.player.room_id run scoreboard players reset @s player.node.room_id
scoreboard players reset @s hub.player.room_id
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# DEBUG
#execute if data storage exigence:debug {tutorial:0} run function exigence:tutorial/toggle_debug
gamemode creative @s[tag=Admin]
effect give @s[tag=Admin] night_vision infinite 0 true