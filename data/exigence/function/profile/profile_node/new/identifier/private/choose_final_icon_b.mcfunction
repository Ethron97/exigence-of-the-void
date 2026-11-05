# Choose icon from the final list

## INPUT
#   INT i
#   STORAGE exigence:profile_icon icons

## OUTPUT
#   STORAGE exigence:profile_icon icon_output

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3) Choose final icon (macro)

$data modify storage exigence:profile_icon icon_output set from storage exigence:profile_icon icons[$(i)]