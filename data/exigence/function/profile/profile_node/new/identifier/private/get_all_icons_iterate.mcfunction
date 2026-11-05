# Of the valid items, get list of all item+colors

## INPUT
#   SCORE #i Temp
#   SCORE #max_items Temp
#   INT exigence:profile_icon i

## OUTPUT
#   STORAGE exigence:profile_icon icons

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 4.. run say (D4) Get all icons

$data modify storage exigence:profile_icon item set from storage exigence:profile_icon items[$(i)]
# Populate all colors + this item
function exigence:profile/profile_node/new/identifier/private/get_all_colors with storage exigence:profile_icon

scoreboard players add #i Temp 1
execute store result storage exigence:profile_icon i int 1 run scoreboard players get #i Temp
execute if score #i Temp < #max_items Temp run function exigence:profile/profile_node/new/identifier/private/get_all_icons_iterate with storage exigence:profile_icon
