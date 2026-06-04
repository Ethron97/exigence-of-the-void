# Apply data to snowball that was just thrown

## CONSTRAINTS
#   AS/AT snowball

#====================================================================================================

tag @s add AccountedFor
tag @s add ETICK

# Generate next id
scoreboard players add #sequence game.entity.snowball.id 1

# Copy next id to snowball
scoreboard players operation @s game.entity.snowball.id = #sequence game.entity.snowball.id

# Set owner as new marker
data modify entity @s Owner set from entity @e[type=minecraft:marker,tag=NewSnowballMarker,distance=..32,limit=1] UUID