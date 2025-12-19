# Update all displays

## CONSTRAINTS
#   AT location

#=============================================================================================================

say updating analysis displays

# Copy rotation to storage
data modify storage exigence:temp color_a set from storage exigence:colors da_tan
#data modify storage exigence:temp color_b set from storage exigence:colors da_brown
data modify storage exigence:temp color_b set value "#DAD2BC"
#data modify storage exigence:temp color_b set value "gold"
data modify storage exigence:temp color_red set value "#A82637"

function exigence:hub/deck_analyzer/display/core/update with storage exigence:deck_analysis
function exigence:hub/deck_analyzer/display/effects/update with storage exigence:deck_analysis
function exigence:hub/deck_analyzer/display/hazard/update with storage exigence:deck_analysis
function exigence:hub/deck_analyzer/display/deck/update with storage exigence:deck_analysis
function exigence:hub/deck_analyzer/display/resources/update with storage exigence:deck_analysis
function exigence:hub/deck_analyzer/display/system_impact/update with storage exigence:deck_analysis

# Update refresh button based on error/warnings
data modify entity @n[distance=..5,type=item_display,tag=RefreshButton] item.components."minecraft:custom_model_data".strings set value ["refresh_green"]
data modify entity @n[distance=..5,type=item_display,tag=RefreshButton] item.components."minecraft:lore" set value [{text:""}]
team join Green @n[distance=..5,type=item_display,tag=RefreshButton]
execute if data storage exigence:deck_analysis warnings[0] run data modify entity @n[distance=..5,type=item_display,tag=RefreshButton] item.components."minecraft:custom_model_data".strings set value ["refresh_yellow"]
execute if data storage exigence:deck_analysis warnings[0] run data modify entity @n[distance=..5,type=item_display,tag=RefreshButton] item.components."minecraft:lore" set value [{text:"Warnings found",color:"yellow"}]
execute if data storage exigence:deck_analysis warnings[0] run team join Special @n[distance=..5,type=item_display,tag=RefreshButton]
execute if data storage exigence:deck_analysis errors[0] run data modify entity @n[distance=..5,type=item_display,tag=RefreshButton] item.components."minecraft:custom_model_data".strings set value ["refresh_red"]
execute if data storage exigence:deck_analysis errors[0] run data modify entity @n[distance=..5,type=item_display,tag=RefreshButton] item.components."minecraft:lore" set value [{text:"Errors found",color:"red"}]
execute if data storage exigence:deck_analysis errors[0] run team join Enemy @n[distance=..5,type=item_display,tag=RefreshButton]

execute as @n[distance=..5,type=item_display,tag=RefreshButton] run data modify entity @n[distance=..1,type=minecraft:text_display,tag=RefreshButtonDetails] text set from entity @s item.components."minecraft:lore"[0]