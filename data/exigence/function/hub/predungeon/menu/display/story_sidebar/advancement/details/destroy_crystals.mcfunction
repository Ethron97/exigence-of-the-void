# Assign details

## CONSTRAINTS
#   AS item display

#====================================================================================================

# Change model
data modify entity @s item.components."minecraft:custom_model_data".strings set value ["destroy_crystals"]

# Change lore for hover details
data modify entity @s item.components."minecraft:lore"[0] set value [{text:"Fracture Wards",color:"white"}]
data modify entity @s item.components."minecraft:lore"[1] set value [{text:"["},{text:"GOAL"},{text:"]"}\
,{text:" Destroy the gemstone wards on Ardor's Bane",color:"white"}]

# Remove local tag
tag @s remove NewItemDisplay
