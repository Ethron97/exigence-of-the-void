# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#=============================================================================================================

# DEBUG
#say I have been right clicked

# If foreign key does not match return
execute unless score @s IDID = @a[tag=ItemShopping,tag=Interacting,limit=1] LookingAtIDID run say Not the one I am looking at
execute unless score @s IDID = @a[tag=ItemShopping,tag=Interacting,limit=1] LookingAtIDID run return 1

# call purchase handler
execute if entity @s[tag=CanPurchase,scores={ShopPurchaseCooldown=0}] run function exigence:menu/item_display/item_shop_display/purchase with entity @s item.components."minecraft:custom_data"
