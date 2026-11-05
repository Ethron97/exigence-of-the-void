# Get glass color from color

## INPUT
#   STORAGE exigence:profile_icon color_input

## OUTPUT
#   STORAGE exigence:profile_icon color_output

#====================================================================================================

data modify storage exigence:profile_icon temp set value "gold"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "orange"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "light_purple"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "magenta"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "aqua"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "light_blue"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "dark_aqua"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "cyan"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "dark_red"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "red"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "red"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "pink"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "dark_green"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "green"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "green"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "light_green"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "dark_blue"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "blue"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "gray"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "light_gray"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "dark_gray"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "gray"
#----------------------------------------------------------------------------------------------------
data modify storage exigence:profile_icon temp set value "dark_purple"
scoreboard players set #temp Temp 0
execute store success score #temp Temp run data modify storage exigence:profile_icon temp set from storage exigence:profile_icon color_input
execute if score #temp Temp matches 0 run return run data modify storage exigence:profile_icon color_output set value "purple"
#----------------------------------------------------------------------------------------------------
# Else, output=input
data modify storage exigence:profile_icon color_output set value color_input