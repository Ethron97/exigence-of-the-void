# Called by menu_tick when player looks at a new item display for the first time

## CONSTRAINTS
#   AS item_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data"

#=============================================================================================================

#say Hover

# Playsound
execute at @s run playsound minecraft:block.iron_trapdoor.open ambient @a ~ ~ ~ 1 1.3

# Glow
data merge entity @s {Glowing:1b}

# Kill any existing cost display
execute as @s[tag=!SlotDisplay] run function exigence:menu/item_display/item_shop_display/cost_display/delete with entity @s item.components."minecraft:custom_data"

# Call sub-hover function
$execute as @s run function $(function_hover) with entity @s item.components."minecraft:custom_data"
