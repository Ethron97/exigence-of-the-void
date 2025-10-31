# Called each tick if a player is ItemShopping

## CONSTRAINTS
#   IF player[tag=ItemShopping]

#=============================================================================================================

# Refresh currencies
function exigence:hub/item_shop/refresh_currency

# If either spend amounts changed for any player, update purchasability
execute if entity @a[tag=ItemShopping,scores={shop.player.currency_amounts_changed=1}] run function exigence:hub/item_shop/update_purchasability_b
