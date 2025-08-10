# Called by menu_tick -> item_display.hover

## CONSTRAINTS
#   AS item_shop_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data" for hover_function

#=============================================================================================================

#say Hover call

# Display item details
function exigence:menu/item_display/display_item_details with entity @s item.components."minecraft:custom_data"

# Scale entity
$data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(hover_scale)f,$(hover_scale)f,$(hover_scale)f]}

# Remove local tag
#tag @e[type=interaction,tag=HoverScale] remove HoverScale

# Display costs
execute as @s[tag=VoidShopDisplay] run function exigence:menu/item_display/void_shop_display/cost_display/create with entity @s
execute as @s[tag=VoidShopDisplay] run function exigence:menu/item_display/void_shop_display/update_purchasability with entity @s item.components."minecraft:custom_data"
