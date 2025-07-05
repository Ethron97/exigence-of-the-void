# Called by menu_tick -> item_display.hover

## CONSTRAINTS
#   AS item_shop_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data" for hover_function

#=============================================================================================================

# Display item details
function exigence:menu/item_display/display_item_details with entity @s item.components."minecraft:custom_data"

# Scale entity
$data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(hover_scale)f,$(hover_scale)f,$(hover_scale)f]}

# Display costs
execute as @s[tag=ItemShopDisplay,tag=!IsOneTimePurchased] run function exigence:menu/item_display/item_shop_display/cost_display/create with entity @s
execute as @s[tag=ItemShopDisplay,tag=!IsOneTimePurchased,tag=Artifact,tag=!IsResearched,tag=IsTierUnlocked] run function exigence:menu/item_display/item_shop_display/cost_display/create_artifact with entity @s item.components."minecraft:custom_data"
execute as @s[tag=ItemShopDisplay,tag=!IsOneTimePurchased] run function exigence:menu/item_display/item_shop_display/update_purchasability with entity @s item.components."minecraft:custom_data"

# Update locked reason
execute as @s[tag=ItemShopDisplay,tag=!CanPurchase] run function exigence:menu/item_display/item_shop_display/locked_reason/update
execute as @s[tag=ItemShopDisplay,tag=IsOneTimePurchased] run function exigence:menu/item_display/item_shop_display/locked_reason/update

# Show locked reason
execute as @s[tag=ItemShopDisplay,tag=!CanPurchase] run function exigence:menu/item_display/item_shop_display/locked_reason/show with entity @s
execute as @s[tag=ItemShopDisplay,tag=IsOneTimePurchased] run function exigence:menu/item_display/item_shop_display/locked_reason/show with entity @s
