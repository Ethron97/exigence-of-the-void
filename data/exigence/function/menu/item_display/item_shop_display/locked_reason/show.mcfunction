# Create new locked reason dispay

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH self

#=============================================================================================================

# DEBUG
#say Creating locked reason display

# Add tag
tag @s add DisplayingLockedReason

# Summon new text display
$execute at @s positioned ^ ^-0.8 ^0.1 run summon minecraft:text_display ~ ~ ~ {Rotation:$(Rotation),Tags:["LockedReasonDisplay","NewLockedReasonDisplay"],text:{text:""},billboard:"fixed",alignment:"center",background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.75f,0.75f,0.75f]}}

# Copy scoreboard value
scoreboard players operation @e[type=minecraft:text_display,tag=NewLockedReasonDisplay] IDID = @s IDID

# Merge data from display
data modify entity @e[type=minecraft:text_display,tag=NewLockedReasonDisplay,limit=1] text set from entity @s item.components."minecraft:custom_data".locked_reason

# Remove local tag
tag @e[type=minecraft:text_display,tag=NewLockedReasonDisplay] remove NewLockedReasonDisplay
