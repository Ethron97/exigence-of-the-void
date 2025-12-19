# Update display entities

## CONSTRAINTS
#   AT deck background

## INPUT
#   DATA deck_analysis

#=============================================================================================================

## VALUES
# GREEN
execute if data storage exigence:deck_analysis {resource_green_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceLabels] text.extra[0].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {resource_green_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceLabels] text.extra[0].color set value "#7EA87E"
execute if data storage exigence:deck_analysis {resource_green_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceScores] text.extra[0].text set value "\n"
$execute unless data storage exigence:deck_analysis {resource_green_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceScores] text.extra[0].text set value "\n$(resource_green_consume)"

# RED
execute if data storage exigence:deck_analysis {resource_red_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceLabels] text.extra[1].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {resource_red_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceLabels] text.extra[1].color set value "#A35454"
execute if data storage exigence:deck_analysis {resource_red_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceScores] text.extra[1].text set value "\n"
$execute unless data storage exigence:deck_analysis {resource_red_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceScores] text.extra[1].text set value "\n$(resource_red_consume)"

# AQUA
execute if data storage exigence:deck_analysis {resource_aqua_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceLabels] text.extra[2].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {resource_aqua_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceLabels] text.extra[2].color set value "#A4DBDB"
execute if data storage exigence:deck_analysis {resource_aqua_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceScores] text.extra[2].text set value "\n"
$execute unless data storage exigence:deck_analysis {resource_aqua_consume:0} run data modify entity @n[distance=..5,type=text_display,tag=ResourceScores] text.extra[2].text set value "\n$(resource_aqua_consume)"

#=============================================================================================================
## PIE CHART
scoreboard players operation #total_resources deck.analysis = resource.green.consume deck.analysis
scoreboard players operation #total_resources deck.analysis += resource.red.consume deck.analysis
scoreboard players operation #total_resources deck.analysis += resource.aqua.consume deck.analysis
# Get %
scoreboard players operation #green deck.analysis = resource.green.consume deck.analysis
scoreboard players operation #red deck.analysis = resource.red.consume deck.analysis
scoreboard players operation #aqua deck.analysis = resource.aqua.consume deck.analysis
scoreboard players operation #green deck.analysis *= 100 number
scoreboard players operation #red deck.analysis *= 100 number
scoreboard players operation #aqua deck.analysis *= 100 number

scoreboard players operation #green deck.analysis /= #total_resources deck.analysis
scoreboard players operation #red deck.analysis /= #total_resources deck.analysis
scoreboard players operation #aqua deck.analysis /= #total_resources deck.analysis

# Normalize to increments of 2
scoreboard players operation #green deck.analysis /= 2 number
scoreboard players operation #red deck.analysis /= 2 number
scoreboard players operation #aqua deck.analysis /= 2 number
scoreboard players operation #green deck.analysis *= 2 number
scoreboard players operation #red deck.analysis *= 2 number
scoreboard players operation #aqua deck.analysis *= 2 number

# Update the item displays
# If green is 0, set to blank
execute if score #green deck.analysis matches 0 run data modify entity @n[distance=..5,type=item_display,tag=PieGreen] item.components."minecraft:custom_model_data".strings set value ["pie_green_000"]
# If green is >0, set to 100%
execute if score #green deck.analysis matches 1.. run data modify entity @n[distance=..5,type=item_display,tag=PieGreen] item.components."minecraft:custom_model_data".strings set value ["pie_green_100"]

# Red = #aqua + #red
scoreboard players operation #red deck.analysis += #aqua deck.analysis
execute store result storage exigence:temp x int 1 run scoreboard players get #red deck.analysis
data modify storage exigence:temp color set value 'red'
execute as @n[distance=..5,type=item_display,tag=PieRed] run function exigence:hub/deck_analyzer/display/resources/private/update_pie with storage exigence:temp

# Aqua
execute store result storage exigence:temp x int 1 run scoreboard players get #aqua deck.analysis
data modify storage exigence:temp color set value 'aqua'
execute as @n[distance=..5,type=item_display,tag=PieAqua] run function exigence:hub/deck_analyzer/display/resources/private/update_pie with storage exigence:temp
