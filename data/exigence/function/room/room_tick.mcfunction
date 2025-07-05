# Called by misc/tick

execute if score Game RoomToken matches 1.. run function exigence:room/game/tick
execute if score Game RoomToken matches 0 if entity @a[tag=ActivePlayer] run function exigence:room/game/tick

