# Updates tags, colors, and displays associated with communicating purchasability

## CONSTRAINTS
#   AS/AT item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# DEBUG
#say Update purchasability

# Add local tag
tag @s add UpdatingPurchasability

## ASSIGN TAGS
# Has enough money amount or is in creative
$execute if entity @a[scores={shop.player.money_to_spend=$(money_cost)..,shop.player.void_shopping_id=$(VoidShopID)},tag=ActivePlayer,distance=..10,gamemode=!creative] run tag @s add CanAfford
$execute if entity @a[scores={shop.player.void_shopping_id=$(VoidShopID)},tag=ActivePlayer,distance=..10,gamemode=creative] run tag @s add CanAfford


## GLOW COLOR
execute if entity @s[tag=CanAfford] run team join Ember @s
execute if entity @s[tag=!CanAfford] run team join Hazard @s


## COST DISPLAY COLORS
execute if entity @s[tag=CanAfford] run data modify entity @s item.components."minecraft:custom_data".money_color set value aqua
execute if entity @s[tag=!CanAfford] run data modify entity @s item.components."minecraft:custom_data".money_color set value red


## UPDATE COST DISPLAY
$execute as @n[distance=..10,type=minecraft:text_display,tag=CostDisplay,scores={IDID=$(idid)}] run function exigence:menu/item_display/void_shop_display/cost_display/update with entity @n[distance=..10,type=minecraft:item_display,tag=VoidShopDisplay,tag=UpdatingPurchasability] item.components."minecraft:custom_data"

# Remove local tag
tag @s remove UpdatingPurchasability
