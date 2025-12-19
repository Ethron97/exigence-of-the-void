# Update pie

## CONSTRAINTS
#   AS text display

## INPUT
#   SCORE #temp Temp - input class weight

#=============================================================================================================

# Preserve input
scoreboard players operation #temp Temp = #input Temp

# If score is >0, lighten up
execute if score #temp Temp matches 0 run data modify entity @s text.extra[0].color set from storage exigence:temp color_a
execute if score #temp Temp matches 1.. run data modify entity @s text.extra[0].color set from storage exigence:temp color_b
execute if score #temp Temp matches ..-1 run data modify entity @s text.extra[0].color set from storage exigence:temp color_red