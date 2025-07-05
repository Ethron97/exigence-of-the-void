# Implements load item display, summons new shop item display

## CONSTRAINTS:
#   AS Item (NSS)

## INPUT:
#   STR menu_tag
#   INT money_cost
#   INT research_cost
#   STR[] parents
# {item_name:'',money_cost:0,research_cost:0,parents:[],rarity:1,tier:1}

#=============================================================================================================

# Give custom data for parents
#   This will get copied to the item display in the next step
$data modify entity @s Item.components."minecraft:custom_data".parents set value $(parents)

# Give right and left click functions
data modify entity @s Item.components."minecraft:custom_data".function_right set value 'exigence:menu/item_display/item_shop_display/calls/right_clicked'
data modify entity @s Item.components."minecraft:custom_data".function_left set value 'exigence:menu/item_display/item_shop_display/calls/left_clicked'
data modify entity @s Item.components."minecraft:custom_data".function_hover set value 'exigence:menu/item_display/item_shop_display/calls/hover'
data modify entity @s Item.components."minecraft:custom_data".function_unhover set value 'exigence:menu/item_display/item_shop_display/calls/unhover'

# Add costs to data
$data modify entity @s Item.components."minecraft:custom_data".money_cost set value $(money_cost)
$data modify entity @s Item.components."minecraft:custom_data".research_cost set value $(research_cost)

# Call load_item_display as summoned item
#   This handles copying the data and summoning item display
$function exigence:menu/load_item_display {menu_tag:'$(menu_tag)',Rotation:'$(Rotation)',scale:'0.5',hover_scale:'0.7'}

# Kill summoned item (no longer needed)
kill @s
