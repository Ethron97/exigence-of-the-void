# Generate new token for a room
# Called when the game begins

scoreboard players add _Next RoomToken 1
scoreboard players operation Game RoomToken = _Next RoomToken
