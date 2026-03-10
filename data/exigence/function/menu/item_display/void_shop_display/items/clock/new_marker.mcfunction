# Called by clock/update

## CONSTRAINTS
#   AS active player

#====================================================================================================

# Summon new marker at player
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ClockMarker","NewClockMarker"],CustomName:{text:"Marker | Clock"}}

# Assign new score to new marker
scoreboard players operation @n[distance=..0.1,type=minecraft:marker,tag=NewClockMarker] game.item.clock_marker.id = #current game.item.clock_marker.id

# Assign player id
scoreboard players operation #current game.entity.profile_id = @s profile.player.profile_id
scoreboard players operation @n[distance=..0.1,type=minecraft:marker,tag=NewClockMarker] game.entity.profile_id = #current game.entity.profile_id

# Remove local tag
tag @n[distance=..0.1,type=minecraft:marker,tag=NewClockMarker] remove NewClockMarker
