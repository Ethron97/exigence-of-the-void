# Called by misc/tick

execute if score Game RoomToken matches 1.. run function exigence:room/game/tick
execute if score Game RoomToken matches 0 in minecraft:overworld if entity @a[tag=ActivePlayer] run function exigence:room/game/tick

execute if score Tutorial RoomToken matches 1.. in exigence:tutorial run function exigence:room/tutorial/tick
execute if score Tutorial RoomToken matches 0 in exigence:tutorial if entity @a[tag=Tutorial] run function exigence:room/tutorial/tick
