# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#=============================================================================================================

# DEBUG
#say I have been right clicked

# call purchase handler
execute if entity @s[tag=CanAfford,scores={ShopPurchaseCooldown=0}] run function exigence:menu/item_display/void_shop_display/purchase with entity @s item.components."minecraft:custom_data"
