# Trigger usage of this item in game
#   Called by player/tick/tick

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

#say (D3) trigger web ball throw

# Reset snowball score
scoreboard players set @s game.player.used.snowball 0

# If there is no snowball, stop here!
execute unless entity @e[type=minecraft:snowball,distance=..32] run say No snowball found?
execute unless entity @e[type=minecraft:snowball,distance=..32] run return 1
#----------------------------------------------------------------------------------------------------

# Spawn a Marker to track snowball's last position
summon minecraft:marker ~ ~ ~ {Tags:["NewSnowballMarker","SnowballMarker"],CustomName:{text:"Marker | Snowball"}}

# Get snowball without tag, copy marker as Thrower
execute as @e[type=snowball,tag=!AccountedFor,distance=..32] run data modify entity @s Owner set from entity @e[type=marker,tag=NewSnowballMarker,distance=..32,limit=1] UUID

# Generate next id
scoreboard players add #sequence game.entity.snowball.id 1

# Copy next id to snowball
scoreboard players operation @e[type=snowball,tag=!AccountedFor,distance=..32] game.entity.snowball.id = #sequence game.entity.snowball.id

# Account for snowball
tag @e[type=snowball,tag=!AccountedFor,distance=..32] add AccountedFor

# Copy highest score to snowball Marker
scoreboard players operation @e[type=marker,tag=NewSnowballMarker,distance=..32] game.entity.snowball.id = #sequence game.entity.snowball.id

# Remove local tag
tag @e[type=marker,tag=NewSnowballMarker,distance=..32] remove NewSnowballMarker
