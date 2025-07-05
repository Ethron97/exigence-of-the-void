# Called by artifact_item_display to handle data (reduce @e)

## CONSTRAINTS
#   AS NAS item

## INPUT
#   STR vault

#=============================================================================================================

# If trident, replace with custom item with model (because default trident renders dumb)
execute as @s[nbt={Item:{id:"minecraft:trident"}}] run data modify entity @s Item.components."minecraft:custom_model_data" set value {"strings":["trident"]}
execute as @s[nbt={Item:{id:"minecraft:trident"}}] run data modify entity @s Item.id set value 'minecraft:stick'

data modify entity @s Item.components."minecraft:custom_data".is_artifact set value 1
$data modify entity @s Item.components."minecraft:custom_data".vault set value $(vault)

# Give NSS tag so the money_item_display knows what to do
tag @s add NSS
tag @s remove NAS
