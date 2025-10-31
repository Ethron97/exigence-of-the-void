# Called by clock/update

## CONSTRAINTS
#   AS active player

#=================================================================================

# Summon new marker at player
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ClockMarker","NewClockMarker"]}

# Assign new score to new marker
scoreboard players operation @e[type=minecraft:marker,tag=NewClockMarker,limit=1] game.item.clock_marker.id = #current game.item.clock_marker.id

# Assign player id
scoreboard players operation #current game.entity.profile_id = @s profile.profile_id
scoreboard players operation @e[type=minecraft:marker,tag=NewClockMarker,limit=1] game.entity.profile_id = #current game.entity.profile_id

# Remove local tag
tag @e[type=minecraft:marker,tag=NewClockMarker] remove NewClockMarker
