# Called by money menu right click

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

# DEBUG
#say purchase void shop

$execute at @s[tag=CanAfford] if score @p[tag=ActivePlayer,scores={dead=0,shop.player.void_shopping_id=$(VoidShopID)}] shop.player.money_to_spend matches $(money_cost).. run function exigence:menu/item_display/void_shop_display/purchase/money with entity @s item.components."minecraft:custom_data"

scoreboard players set @s shop.frame.purchase_cooldown 5
