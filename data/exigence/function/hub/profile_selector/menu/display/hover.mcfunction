# Called by menu_tick when player looks at a new item display for the first time

## CONSTRAINTS
#   AS item_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data"

#=============================================================================================================

#say Hover

# Glow
data merge entity @s {Glowing:1b}

# Call sub-hover function
$execute as @s run function $(function_hover) with entity @s item.components."minecraft:custom_data"
