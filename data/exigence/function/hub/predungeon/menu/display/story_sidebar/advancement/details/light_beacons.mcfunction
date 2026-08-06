# Assign details

## CONSTRAINTS
#   AS item display

#====================================================================================================

# Change model
data modify entity @s item.components."minecraft:custom_model_data".strings set value ["light_beacons"]

# Change lore/name for hover details
data modify entity @s item.components."minecraft:lore"[0] set value [{text:"Light Beacons",color:"white"}]
data modify entity @s item.components."minecraft:lore"[1] set value [{text:"["},{text:"GOAL"},{text:"]"}\
,{text:" Light the beacons to herald the return of the Ardor",color:"white"}]

# Remove local tag
tag @s remove NewItemDisplay
