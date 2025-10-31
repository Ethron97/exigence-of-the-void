# Called by money menu right click

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

# DEBUG
#say purchase

$execute at @s[tag=CanBuy,tag=OneTime,tag=!IsOneTimePurchased] if score @p[tag=ItemShopping,tag=Interacting] shop.player.money_to_spend matches $(money_cost).. run function exigence:menu/item_display/item_shop_display/purchase/money_one_time with entity @s item.components."minecraft:custom_data"
$execute at @s[tag=CanBuy,tag=!OneTime,tag=!Artifact] if score @p[tag=ItemShopping,tag=Interacting] shop.player.money_to_spend matches $(money_cost).. run function exigence:menu/item_display/item_shop_display/purchase/money with entity @s item.components."minecraft:custom_data"
$execute at @s[tag=CanBuy,tag=!OneTime,tag=Artifact] if score @p[tag=ItemShopping,tag=Interacting] shop.player.money_to_spend matches $(money_cost).. run function exigence:menu/item_display/item_shop_display/purchase/money_artifact with entity @s item.components."minecraft:custom_data"
$execute at @s[tag=CanResearch,tag=!Artifact] if score @p[tag=ItemShopping,tag=Interacting] shop.player.research_to_spend matches $(research_cost).. run function exigence:menu/item_display/item_shop_display/purchase/research with entity @s item.components."minecraft:custom_data"

scoreboard players set @s shop.frame.purchase_cooldown 5
