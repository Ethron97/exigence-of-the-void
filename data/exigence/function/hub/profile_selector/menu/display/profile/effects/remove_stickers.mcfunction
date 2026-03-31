# Removes detail stickers

## CONSTRAINTS
#   AS slot display

## INPUT
#   item.components."minecraft:custom_data"

#====================================================================================================

#say Remove detail stickers

$execute at @s run kill @e[tag=ProfileSticker,distance=..5,nbt={data:{custom_data:{slot_id:"$(slot_id)"}}}]
$execute at @s run kill @e[tag=ProfileSticker,distance=..5,nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}]
