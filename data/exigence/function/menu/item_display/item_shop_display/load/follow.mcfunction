# Called by load / unload
#   Teleports all associated objects along with the item display

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data" for id

#====================================================================================================

# Menu lines
$execute at @s as @e[distance=..16,type=minecraft:block_display,scores={IDID=$(idid)}] run tp @s ^ ^ ^-0.1
