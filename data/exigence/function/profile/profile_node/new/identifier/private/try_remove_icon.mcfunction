# If this identifier ICON exists on this profile, remove it and reduce count

## CONSTRAINTS
#   AS profile node

## INPUT
#   STR profile_icon
#   STORAGE exigence:profile_icon icons

## OUTPUT
#   *STORAGE exigence:profile_icon icons
#   *SCORE #max_icons Temp

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3) Try remove icon from array

# Initialize variables for lookup
scoreboard players set #i Temp 0
data modify storage exigence:temp i set value 0
data modify storage exigence:temp array set from storage exigence:profile_icon icons
data modify storage exigence:temp search_value set from entity @s data.custom_data.profile_icon
# Get index of element
#   RETURNS: #i Temp
function exigence:misc/general/index_of_element with storage exigence:temp

# If index is -1, did not remove
execute if score #i Temp matches -1 run return 0
#----------------------------------------------------------------------------------------------------
# If not -1, remove it
function exigence:profile/profile_node/new/identifier/private/remove_icon_from_array with storage exigence:temp
