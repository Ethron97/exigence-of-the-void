# Called by clock/update

## CONSTRAINTS
#   AS active player

#=================================================================================

# Summon new marker at player
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ClockMarker","NewClockMarker"]}

# Assign new score to new marker
scoreboard players operation @e[type=minecraft:marker,tag=NewClockMarker,limit=1] ClockID = #current ClockID

# Assign player id
scoreboard players operation #current PlayerID = @s PlayerID
scoreboard players operation @e[type=minecraft:marker,tag=NewClockMarker,limit=1] PlayerID = #current PlayerID

# Remove local tag
tag @e[type=minecraft:marker,tag=NewClockMarker] remove NewClockMarker
