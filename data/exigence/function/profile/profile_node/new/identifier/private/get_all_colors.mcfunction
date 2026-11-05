# Of the valid items, get list of all item+colors
#   Only include colors as they are necessary based on the total number of existing profiles

## INPUT
#   STR exigence:profile_icon item

## OUTPUT
#   *STORAGE exigence:profile_icon icons
#   *SCORE #max_icons Temp

#====================================================================================================

scoreboard players add #max_icons Temp 1
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"white"}

# Only add colors if needed (light first)
#execute unless score #count profile.player.profile_id matches 19.. run return 0
#----------------------------------------------------------------------------------------------------
scoreboard players add #max_icons Temp 7
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"yellow"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"gold"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"red"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"light_purple"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"aqua"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"blue"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"green"}

# Then dark colors
execute unless score #count profile.player.profile_id matches 145.. run return 0
#----------------------------------------------------------------------------------------------------
scoreboard players add #max_icons Temp 4
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"dark_red"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"dark_purple"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"dark_aqua"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"dark_green"}

# Then black/gray only if absolutely necessary
execute unless score #count profile.player.profile_id matches 217.. run return 0
#----------------------------------------------------------------------------------------------------
scoreboard players add #max_icons Temp 4
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"gray"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"black"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"dark_gray"}
$data modify storage exigence:profile_icon icons append value {sprite:"$(item)",atlas:"items",color:"dark_blue"}
