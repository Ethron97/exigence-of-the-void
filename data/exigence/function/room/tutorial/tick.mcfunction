# Called by ../room_tick if Tutorial is active

# If player is found with matching room token, reset scoreboard to the cooldown
execute as @a[tag=Tutorial] if score @s RoomToken = Tutorial RoomToken run scoreboard players operation #TutorialGrace RoomToken = #TutorialLimit RoomToken

# If active player is found with mis-matching token, kick them from the tutorial
execute as @a[tag=Tutorial] unless score @s RoomToken = Tutorial RoomToken run say Rejoined after grace ran out, should kick
execute as @a[tag=Tutorial] unless score @s RoomToken = Tutorial RoomToken run function exigence:room/tutorial/kick_player

# If tutorial grace runs out, reset the tutorial so another player can play
scoreboard players remove #TutorialGrace RoomToken 1
execute if score #TutorialGrace RoomToken matches ..0 if data storage exigence:dungeon {tutorial:1} run say Player disconencted, ending tutorial
execute if score #TutorialGrace RoomToken matches ..0 in exigence:tutorial run function exigence:tutorial/unload
