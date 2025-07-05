# Called by ../room_tick if Game is active

# If player is found with matching room token, reset scoreboard to the cooldown
execute as @a[tag=ActivePlayer] if score @s RoomToken = Game RoomToken run scoreboard players operation #GameGrace RoomToken = #GameLimit RoomToken

# If active player is found with mis-matching token, kick them from the game
execute as @a[tag=ActivePlayer] unless score @s RoomToken = Game RoomToken run say Rejoined after grace ran out, should kick
execute as @a[tag=ActivePlayer] unless score @s RoomToken = Game RoomToken run function exigence:room/game/kick_player

# If game grace runs out, reset the game so another player can play
scoreboard players remove #GameGrace RoomToken 1
execute if score #GameGrace RoomToken matches ..0 if data storage exigence:dungeon {is_active:1} run say Player disconencted, ending game
execute if score #GameGrace RoomToken matches ..0 if data storage exigence:dungeon {is_active:1} run function exigence:game/game_loss
execute if score #GameGrace RoomToken matches ..0 run scoreboard players set Game RoomToken 0
