# Generate new token for a room
# Called when the tutorial begins

scoreboard players add _Next RoomToken 1
scoreboard players operation Tutorial RoomToken = _Next RoomToken
