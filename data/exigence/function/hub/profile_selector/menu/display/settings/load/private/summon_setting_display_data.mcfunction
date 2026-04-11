# Load setting display

## CONSTRAINTS
#   AS new setting display

## INPUT:
#   exigence:temp INT player_id
#   exigence:temp INT profile_selector_id

#====================================================================================================

# Assign data
data modify entity @s item.components."minecraft:custom_data".player_id set from storage exigence:temp player_id
data modify entity @s item.components."minecraft:custom_data".profile_selector_id set from storage exigence:temp profile_selector_id

# Give right and left click functions
# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @s IDID = #highest IDID

# Copy profile selector id
execute store result score @s hub.entity.profile_selector_id run data get storage exigence:temp profile_selector_id

# Add ID to item data
execute store result entity @s item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Local tag to be removed by function that implements this
