# Assign details

## CONSTRAINTS
#   AS item display

#====================================================================================================

# Change model
data modify entity @s item.components."minecraft:custom_model_data".strings set value ["win_difficulty_0"]

# Change lore/name for hover details
data modify entity @s item.components."minecraft:lore"[0] set value [{text:"Road to Solstice",color:"white"}]
data modify entity @s item.components."minecraft:lore"[1] set value [{text:"["},{text:"GOAL"},{text:"]"}\
,{text:" Complete the Tutorial",color:"white"}]

# Remove local tag
tag @s remove NewItemDisplay
