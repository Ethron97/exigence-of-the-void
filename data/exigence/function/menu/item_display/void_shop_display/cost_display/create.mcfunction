# Create new cost display for this item display
#   Responsible purely for entity creation and assignment

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH self

#=============================================================================================================

# DEBUG
#say Creating cost display

# Add tag
tag @s add DisplayingCost

# Summon new text display
$execute at @s positioned ^ ^-0.45 ^0.1 run summon minecraft:text_display ~ ~ ~ {Rotation:$(Rotation),Tags:["CostDisplay","NewCostDisplay"],text:{text:""},billboard:"fixed",alignment:"center",background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.75f,0.75f,0.75f]}}

# Copy scoreboard value
scoreboard players operation @e[type=minecraft:text_display,tag=NewCostDisplay] IDID = @s IDID

# Merge rotation
#data modify entity @e[type=minecraft:text_display,tag=NewCostDisplay,limit=1] Rotation set from entity @s Rotation

# Remove local tag
tag @e[type=minecraft:text_display,tag=NewCostDisplay] remove NewCostDisplay
