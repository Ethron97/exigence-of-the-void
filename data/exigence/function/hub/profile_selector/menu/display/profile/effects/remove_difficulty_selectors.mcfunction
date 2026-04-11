# Removes difficulty selector displays

## CONSTRAINTS
#   AS profile display to remove selectors of

## INPUT
#   WITH item.components."minecraft:custom_data" for idid

#====================================================================================================

#say (D3) Remove difficulty selectors

# Remove display details
$execute at @s as @e[type=minecraft:item_display,tag=DifficultySelectorDisplay,distance=..16,nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}] \
run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/remove_all_details with entity @s item.components."minecraft:custom_data"

# Remove display
$execute at @s run kill @e[type=minecraft:item_display,tag=DifficultySelectorDisplay,distance=..16,nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}]
