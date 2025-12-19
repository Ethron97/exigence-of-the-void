# Update pie

## CONSTRAINTS
#   AS block display - bar of class

## INPUT
#   SCORE #temp Temp - input class weight

#=============================================================================================================

# Preserve input
scoreboard players operation #temp Temp = #input Temp

# Get fraction of total
#$scoreboard players operation #temp Temp = class.$(class).weighted deck.analysis
#scoreboard players operation #temp Temp *= 100 number
#scoreboard players operation #temp Temp /= #total Temp
#scoreboard players operation #temp Temp *= 100 number

# Get fraction of highest
scoreboard players operation #temp Temp *= 100 number
scoreboard players operation #temp Temp /= #highest Temp
#   At this point, we have a value 0..100

# Get final bar length (% of 1.3125f)
scoreboard players set #temp2 Temp 13125
scoreboard players operation #temp2 Temp *= #temp Temp
scoreboard players operation #temp2 Temp > 0 number
# Let's say 100%... this is now 1312500; we want 1.3125, so 6 decimal moves

# Early return if new position matches old position
execute if score @s Random = #temp2 Temp run return fail

# Save un-scaled int so we can check if it needs changed or not
scoreboard players operation @s Random = #temp2 Temp

# Update bar length
execute store result storage exigence:temp length float 0.000001 run scoreboard players get #temp2 Temp
function exigence:hub/deck_analyzer/display/system_impact/private/update_bar_m with storage exigence:temp