# Called by menu_tick when player looks at a new item display for the first time

## CONSTRAINTS
# AS item_display to unhover

## INPUT
#   WITH item.components."minecraft:custom_data"

#====================================================================================================

# DEBUG
execute if score toggle.menu debug matches 1 if score debug.level debug matches 4.. run say (D4) Unhover (generic unhover)

# Remove Glow
data modify entity @s Glowing set value false

# Call sub-hover function
$execute as @s run function $(function_unhover) with entity @s item.components."minecraft:custom_data"
