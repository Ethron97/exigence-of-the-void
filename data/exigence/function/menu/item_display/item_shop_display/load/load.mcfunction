# Called by load handler / leave

## CONSTRAINTS
#   AS item_display without "Loaded" tag

#====================================================================================================

# Teleport self
execute at @s run tp ~ ~8 ~

# Associated objects follow
function exigence:menu/item_display/item_shop_display/load/follow with entity @s item.components."minecraft:custom_data"

execute at @s run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0 10
execute at @s run playsound minecraft:entity.breeze.land ambient @a[tag=ItemShop] ~ ~ ~ 3 1

# Add loaded tag
tag @s add Loaded

# Handle display initialization commands:
function exigence:hub/item_shop/private/update_purchasability_tags
#function exigence:menu/item_display/item_shop_display/update_purchasability_displays with entity @s item.components."minecraft:custom_data"
execute at @s run function exigence:menu/item_display/item_shop_display/update_parent_line_colors with entity @s item.components."minecraft:custom_data"