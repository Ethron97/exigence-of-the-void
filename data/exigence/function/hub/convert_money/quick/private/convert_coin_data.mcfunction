# Assign data to the item of temp convert display coin summoned

## CONSTRAINTS
#   AS item (convert coin)

#====================================================================================================

# Remove convert-coin data
data modify entity @s Item.components."minecraft:custom_data".convert_coin set value false

# Set age to despawn in -1s
data modify entity @s Age set value 5980

# Prevent pick
data modify entity @s PickupDelay set value 32767