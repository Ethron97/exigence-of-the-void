# CALL EVERY SECOND from game tick once per second
#   We have to call even if the player doesn't have a clock item, in case it drops somehow

#====================================================================================================

# Increase clock id by 1
scoreboard players add #current game.item.clock_marker.id 1

# Summon new marker for each player
execute as @a[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,tag=ActivePlayer,scores={dead=0,game.player.vault_code=0}] at @s run function exigence:player/use_item/clock/new_marker

# Kill any markers with score < current-30
scoreboard players operation #cutoff game.item.clock_marker.id = #current game.item.clock_marker.id
scoreboard players operation #cutoff game.item.clock_marker.id -= 30 number
execute as @e[type=minecraft:marker,tag=ClockMarker,x=-520,y=-64,z=-287,dx=345,dy=345,dz=345] if score @s game.item.clock_marker.id <= #cutoff game.item.clock_marker.id run kill @s
