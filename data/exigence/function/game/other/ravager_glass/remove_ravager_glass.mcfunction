# Remove gray stained glass pane and replace with temporary marker entity

## CONSTRAINTS
#   AS player
#   AT position near player that has ravager glass

#====================================================================================================

# Break the Ravager Glass
fill ~ ~ ~ ~ ~ ~ air replace gray_stained_glass_pane

# Place a marker to store the position of the Ravager Glass.
summon minecraft:marker ~ ~ ~ {Tags:["RavagerGlass","NewRavagerGlass","ETICK"],CustomName:{text:"Marker | RavagerGlass"}}

# Ping tutorial if tutorial playing
execute if entity @s[tag=Tutorial] in exigence:tutorial if score tut.step hub.tutorial matches 1304 run function exigence:tutorial/flow/step

# Set Ravager Glass marker data
execute as @n[type=minecraft:marker,tag=NewRavagerGlass,distance=..3] run function exigence:game/other/ravager_glass/marker_data

# Give player score
scoreboard players add @s[tag=!Tutorial] profile.data.gameplay.cr.ravager_glass 1
