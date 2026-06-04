# Trigger usage of this item in game
#   Called by player/tick/tick

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) trigger web ball throw

# Reset snowball score
scoreboard players set @s game.player.used.snowball 0

# If there is no snowball, stop here!
execute unless entity @e[type=minecraft:snowball,distance=..32] run return run say No snowball found?
#----------------------------------------------------------------------------------------------------

# Spawn a Marker to track snowball's last position
summon minecraft:marker ~ ~ ~ {Tags:["NewSnowballMarker","SnowballMarker","ETICK"],CustomName:{text:"Marker | Snowball"}}

# Call snowball function as closest non-accounted for snowball
execute as @n[type=minecraft:snowball,tag=!AccountedFor,distance=..32] at @s run function exigence:hub/item_shop/item/item_web_ball/private/snowball_data

# Copy sequence to score to snowball Marker
scoreboard players operation @e[type=minecraft:marker,tag=NewSnowballMarker,distance=..32] game.entity.snowball.id = #sequence game.entity.snowball.id

# Remove local tag
tag @e[type=minecraft:marker,tag=NewSnowballMarker,distance=..32] remove NewSnowballMarker
