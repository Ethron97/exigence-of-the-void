# Called by money menu right click

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# DEBUG
execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Void shop PURCHASE

$execute at @s[tag=CanAfford] if score @p[scores={dead=0},tag=ActivePlayer,tag=Interacting,distance=..10] shop.player.money_to_spend matches $(money_cost).. run function exigence:menu/item_display/void_shop_display/purchase/money with entity @s item.components."minecraft:custom_data"

scoreboard players set @s shop.frame.purchase_cooldown 5
