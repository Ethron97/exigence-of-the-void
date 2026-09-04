# Close room, typically after timeout ends

## CONSTRAINTS
#   AS room node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 2.. run say (D2 Hub) Close game/exalting (room expired)

scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Finish exalting
function exigence:player/tick/private/done_exalting

tag @s remove KillMe
