# Removes detail stickers

## CONSTRAINTS
#   AS slot display

## INPUT
#   item.components."minecraft:custom_data"

#=============================================================================================================

#say Remove detail stickers

$execute at @s run kill @e[distance=..5,tag=ProfileSticker,nbt={data:{custom_data:{slot_id:"$(slot_id)"}}}]
$execute at @s run kill @e[distance=..5,tag=ProfileSticker,nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}]
