# Assign details

## CONSTRAINTS
#   AS item display

#====================================================================================================

# Change model
data modify entity @s item.components."minecraft:custom_model_data".strings set value ["talk_to_petitioner"]

# Change lore/name for hover details
data modify entity @s item.components."minecraft:lore"[0] set value [{text:"A New Alliance",color:"white"}]
data modify entity @s item.components."minecraft:lore"[1] set value [{text:"["},{text:"GOAL"},{text:"]"}\
,{text:" Find the Petitioner in the Temple of Fervor and talk to them",color:"white"}]

# Remove local tag
tag @s remove NewItemDisplay
