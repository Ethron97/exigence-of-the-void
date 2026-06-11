# Called by clock/update

## CONSTRAINTS
#   AS active player

#====================================================================================================

# Summon new marker at player
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ClockMarker","NewClockMarker"],CustomName:{text:"Marker | Clock"}}

# Assign new score to new marker
scoreboard players operation @n[type=minecraft:marker,tag=NewClockMarker,distance=..0.1] game.item.clock_marker.id = #current game.item.clock_marker.id

# Assign player id
scoreboard players operation #current game.player.player_number = @s game.player.player_number
scoreboard players operation @n[type=minecraft:marker,tag=NewClockMarker,distance=..0.1] game.entity.player_number = #current game.player.player_number

# Make marker look in the same direction the player as
data modify entity @n[type=minecraft:marker,tag=NewClockMarker,distance=..0.1] Rotation set from entity @s Rotation

# Remove local tag
tag @n[type=minecraft:marker,tag=NewClockMarker,distance=..0.1] remove NewClockMarker
