# Update pie

## CONSTRAINTS
#   AS text display

## INPUT
#   STR class (eg "Treasure", "Ember")
#   SCORE #temp Temp (input class weight)
#   SCORE #temp2 Temp (calculated length from update_bar function, which gets called before this)

#=============================================================================================================

# Preserve input
scoreboard players operation #temp Temp = #input Temp

execute if score #temp Temp matches 0 run data modify entity @s text.extra[0].text set value "\n"
execute if score #temp Temp matches 0 run return fail

# Get decimal pieces
scoreboard players operation #temp3 Temp = #temp Temp
scoreboard players operation #temp3 Temp /= 10 number

scoreboard players operation #temp4 Temp = #temp Temp
scoreboard players operation #temp4 Temp %= 10 number

execute store result storage exigence:temp x int 1 run scoreboard players get #temp3 Temp
execute store result storage exigence:temp z int 1 run scoreboard players get #temp4 Temp
execute store result storage exigence:temp length float 0.000001 run scoreboard players get #temp2 Temp
$data modify storage exigence:temp class set value $(class)
function exigence:hub/deck_analyzer/display/system_impact/private/update_score_m with storage exigence:temp