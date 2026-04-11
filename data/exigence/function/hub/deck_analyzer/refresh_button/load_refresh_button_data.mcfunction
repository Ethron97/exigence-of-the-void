# Load slot selector display

## CONSTRAINT
#   AS new refresh button

## INPUT
#   SCORE #input hub.entity.profile_id
#   SCORE #input hub.entity.coop_profile_id

#====================================================================================================

# Assign data
scoreboard players operation @s hub.entity.profile_id = #input hub.entity.profile_id
scoreboard players operation @s hub.entity.coop_profile_id = #input hub.entity.coop_profile_id
execute store result entity @s item.components."minecraft:custom_data".profile_id int 1 run scoreboard players get #input hub.entity.profile_id
execute store result entity @s item.components."minecraft:custom_data".coop_profile_id int 1 run scoreboard players get #input hub.entity.coop_profile_id
data modify entity @s item.components."minecraft:custom_data".scale set value '1.0'
data modify entity @s item.components."minecraft:custom_data".hover_scale set value '1.0'
data modify entity @s item.components."minecraft:custom_name" set value {text:"Refresh",color:"white"}
team join Green @s

# Give right and left click functions
data modify entity @s item.components."minecraft:custom_data".function_right set value 'exigence:hub/deck_analyzer/refresh_button/calls/right_clicked'
data modify entity @s item.components."minecraft:custom_data".function_left set value 'exigence:hub/deck_analyzer/refresh_button/calls/left_clicked'
data modify entity @s item.components."minecraft:custom_data".function_hover set value 'exigence:hub/deck_analyzer/refresh_button/calls/hover'
data modify entity @s item.components."minecraft:custom_data".function_unhover set value 'exigence:hub/deck_analyzer/refresh_button/calls/unhover'

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @s IDID = #highest IDID

# Add ID to item data
execute store result entity @s item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID