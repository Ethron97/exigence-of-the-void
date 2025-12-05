# Removes coop selector displays

## CONSTRAINTS
#   AS profile display to remove selectors of

## INPUT
#   WITH item.components."minecraft:custom_data" for idid

#=============================================================================================================

#say Remove coop selectors

# Remove display details
$execute at @s as @e[distance=..16,type=minecraft:item_display,tag=CoopSelectorDisplay,nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}] \
run function exigence:hub/profile_selector/menu/display/coop_selector/calls/private/remove_all_details with entity @s item.components."minecraft:custom_data"

# Remove display
$execute at @s run kill @e[distance=..16,type=minecraft:item_display,tag=CoopSelectorDisplay,nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}]
