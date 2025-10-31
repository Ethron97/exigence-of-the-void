# Trigger usage of this item in game
#   Called by player/tick/tick

## CONSTRAINTS
#   AS/AT player

#=============================================================================================================

#say trigger web ball throw

# Reset snowball score
scoreboard players set @s game.player.used.snowball 0

# If there is no snowball, stop here!
execute unless entity @e[distance=..32,type=minecraft:snowball] run say No snowball found?
execute unless entity @e[distance=..32,type=minecraft:snowball] run return 1

# Spawn a Marker to track snowball's last position
summon marker ~ ~ ~ {Tags:["NewSnowballMarker","SnowballMarker"]}

# Get snowball without tag, copy marker as Thrower
execute as @e[distance=..32,type=snowball,tag=!AccountedFor] run data modify entity @s Owner set from entity @e[distance=..32,type=marker,tag=NewSnowballMarker,limit=1] UUID

# Generate next id
scoreboard players add #sequence game.entity.snowball.id 1

# Copy next id to snowball
scoreboard players operation @e[distance=..32,type=snowball,tag=!AccountedFor] game.entity.snowball.id = #sequence game.entity.snowball.id

# Account for snowball
tag @e[distance=..32,type=snowball,tag=!AccountedFor] add AccountedFor

# Copy highest score to snowball Marker
scoreboard players operation @e[distance=..32,type=marker,tag=NewSnowballMarker] game.entity.snowball.id = #sequence game.entity.snowball.id

# Remove local tag
tag @e[distance=..32,type=marker,tag=NewSnowballMarker] remove NewSnowballMarker
