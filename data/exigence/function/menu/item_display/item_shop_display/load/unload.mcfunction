# Called by load handler / leave

## CONSTRAINTS
#   AS item_display with "Loaded" tag

#=============================================================================================================

# Teleport self
execute at @s run tp ^ ^30 ^

# Kill associated interaction (so game is less laggy)
#function exigence:menu/item_display/item_shop_display/load/delete_interaction with entity @s item.components."minecraft:custom_data"

# Associated objects follow
function exigence:menu/item_display/item_shop_display/load/follow with entity @s item.components."minecraft:custom_data"

# Remove loaded tag
tag @s remove Loaded
