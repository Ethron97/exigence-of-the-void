# Remove gray stained glass pane and replace with temporary marker entity

## CONSTRAINTS
#   AS player
#   AT position near player that has ravager glass

#=======================================================================================================

# Break the Ravager Glass
fill ~ ~ ~ ~ ~ ~ air replace gray_stained_glass_pane

# Place a marker to store the position of the Ravager Glass.
summon minecraft:marker ~ ~ ~ {Tags:["RavagerGlass","NewRavagerGlass"]}

execute if entity @s[tag=Tutorial] run tag @n[distance=..3,type=minecraft:marker,tag=NewRavagerGlass] add TutorialGlass
execute if entity @s[tag=Tutorial] in exigence:tutorial if score Step Tutorial matches 1304 run function exigence:tutorial/flow/step

# Set Ravager Glass marker data
execute as @e[distance=..3,type=minecraft:marker,tag=NewRavagerGlass] run function exigence:game/other/ravager_glass/marker_data

# Give player score
scoreboard players add @s[tag=!Tutorial] cr_ravagerGlass 1
scoreboard players add @s[tag=!Tutorial] t_ravagerGlass 1
