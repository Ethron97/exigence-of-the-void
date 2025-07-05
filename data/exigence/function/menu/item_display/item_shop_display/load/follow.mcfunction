# Called by load / unload
#   Teleports all associated objects along with the item display

## CONSTRAINTS
#   AS item_display without "Loaded" tag

## INPUT
#   WITH item_display item.components."minecraft:custom_data" for id

#=============================================================================================================

# Interaction boxes
$execute at @s as @e[type=minecraft:interaction,scores={IDID=$(idid)}] run tp @s ^ ^-0.15 ^

# Menu lines
$execute at @s as @e[type=minecraft:block_display,scores={IDID=$(idid)}] run tp @s ^ ^ ^-0.1
