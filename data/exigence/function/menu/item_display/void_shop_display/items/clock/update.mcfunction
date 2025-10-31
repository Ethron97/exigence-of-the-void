# CALL EVERY SECOND from game_tick
#   We have to call even if the player doesn't have a clock item, in case it drops somehow

## CONSTRAINTS
#   AS player

#==================================================================================

# Increase clock id by 1
scoreboard players add #current game.item.clock_marker.id 1

# At each active player, summon new marker
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=0}] at @s run function exigence:menu/item_display/void_shop_display/items/clock/new_marker

# Kill any markers with score < current-30
scoreboard players operation #cutoff game.item.clock_marker.id = #current game.item.clock_marker.id
scoreboard players operation #cutoff game.item.clock_marker.id -= 30 number
execute as @e[type=minecraft:marker,tag=ClockMarker] if score @s game.item.clock_marker.id <= #cutoff game.item.clock_marker.id run kill @s
