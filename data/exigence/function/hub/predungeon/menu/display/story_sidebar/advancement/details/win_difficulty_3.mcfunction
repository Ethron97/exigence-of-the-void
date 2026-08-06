# Assign details

## CONSTRAINTS
#   AS item display

#====================================================================================================

# Change model
data modify entity @s item.components."minecraft:custom_model_data".strings set value ["win_difficulty_3"]

# Change lore/name for hover details
data modify entity @s item.components."minecraft:lore"[0] set value [{text:"Temple of Fervor",color:"white"}]
data modify entity @s item.components."minecraft:lore"[1] set value [{text:"["},{text:"GOAL"},{text:"]"}\
,{text:" Return from the Temple of Fervor",color:"white"}]

# Remove local tag
tag @s remove NewItemDisplay
