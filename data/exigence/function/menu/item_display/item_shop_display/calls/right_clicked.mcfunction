# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

# DEBUG
#say I have been right clicked

# If foreign key does not match return
execute at @s unless score @s IDID = @p[tag=ItemShop,tag=Interacting] shop.player.looking_at_idid run say Not the one I am looking at
execute at @s unless score @s IDID = @p[tag=ItemShop,tag=Interacting] shop.player.looking_at_idid run return 1
#----------------------------------------------------------------------------------------------------

# call purchase handler
execute if entity @s[tag=CanPurchase,scores={shop.frame.purchase_cooldown=0}] run function exigence:menu/item_display/item_shop_display/purchase with entity @s item.components."minecraft:custom_data"
