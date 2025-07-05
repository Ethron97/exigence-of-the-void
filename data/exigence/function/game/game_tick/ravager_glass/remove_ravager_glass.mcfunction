# Remove gray stained glass pane and replace with temporary marker entity

## CONSTRAINTS
#   AS player
#   AT position near player that has ravager glass

#=======================================================================================================

# Break the Ravager Glass
fill ~ ~ ~ ~ ~ ~ air replace gray_stained_glass_pane

# Place a marker to store the position of the Ravager Glass.
summon minecraft:marker ~ ~ ~ {Duration:999999,Tags:["RavagerGlass","NewRavagerGlass"]}

# Set Ravager Glass marker data
execute as @e[type=minecraft:marker,tag=NewRavagerGlass] run function exigence:game/game_tick/ravager_glass/marker_data

# Give player score
scoreboard players add @s cr_ravagerGlass 1
scoreboard players add @s t_ravagerGlass 1
