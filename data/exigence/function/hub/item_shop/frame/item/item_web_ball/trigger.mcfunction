# Trigger usage of this item in game
#   Called by player/tick/tick

## CONSTRAITNS
#   AS/AT player

#=============================================================================================================

#say trigger web ball throw

# Reset snowball score
scoreboard players set @s Snowball 0

# If there is no snowball, stop here!
execute unless entity @e[type=snowball] run return 1

# Spawn a Marker to track snowball's last position
summon marker ~ ~ ~ {Tags:["NewSnowballMarker","SnowballMarker"]}

# Get snowball without tag, copy marker as Thrower
execute as @e[type=snowball,tag=!AccountedFor] run data modify entity @s Owner set from entity @e[type=marker,tag=NewSnowballMarker,limit=1] UUID

# Increment and copy highest SnowballID
scoreboard players add Highest SnowballID 1
scoreboard players operation #set SnowballID = Highest SnowballID

# Copy SnowballID to snowball
scoreboard players operation @e[type=snowball,tag=!AccountedFor] SnowballID = #set SnowballID

# Account for snowball
tag @e[type=snowball,tag=!AccountedFor] add AccountedFor

# Copy highest score to snowball Marker
scoreboard players operation @e[type=marker,tag=NewSnowballMarker] SnowballID = #set SnowballID

# Remove local tag
tag @e[type=marker,tag=NewSnowballMarker] remove NewSnowballMarker
