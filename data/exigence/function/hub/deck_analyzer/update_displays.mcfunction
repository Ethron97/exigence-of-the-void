# Update all displays

## CONSTRAINTS
#   AT location

#====================================================================================================

#say (D3) updating analysis displays

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
execute as @e[type=item_display,tag=RefreshButton,distance=..5,limit=1] run function exigence:hub/deck_analyzer/refresh_button/update_appearance