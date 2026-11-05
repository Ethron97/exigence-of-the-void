# Choose icon from the final list

## INPUT
#   INT max_icons
#   STORAGE exigence:profile_icon icons

## OUTPUT
#   STORAGE exigence:profile_icon icon_output

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3) Choose final icon

$execute store result storage exigence:profile_icon i int 1 run random value 1..$(max_icons)
function exigence:profile/profile_node/new/identifier/private/choose_final_icon_b with storage exigence:profile_icon
