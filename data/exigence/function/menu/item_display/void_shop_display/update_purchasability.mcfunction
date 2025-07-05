# Updates tags, colors, and displays associated with communicating purchasability

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

# DEBUG
#say Update purchasability

# Add local tag
tag @s add UpdatingPurchasability

## ASSIGN TAGS
# Has enough money amount or is in creative
$execute if entity @a[tag=ActivePlayer,scores={MoneyToSpend=$(money_cost)..,VoidShopping=$(VoidShopID)},gamemode=!creative] run tag @s add CanAfford
$execute if entity @a[tag=ActivePlayer,gamemode=creative,scores={VoidShopping=$(VoidShopID)}] run tag @s add CanAfford


## GLOW COLOR
execute if entity @s[tag=CanAfford] run team join Ember @s
# Not enough money to buy/research
execute if entity @s[tag=!CanAfford] run team join Hazard @s


## COST DISPLAY COLORS
# If researched and can afford, aqua
execute if entity @s[tag=CanAfford] run data modify storage exigence:shop money_color set value aqua
# If can't afford, red
execute unless entity @s[tag=CanAfford] run data modify storage exigence:shop money_color set value red


## UPDATE COST DISPLAY
# Copy colors to item data
data modify entity @s item.components."minecraft:custom_data".money_color set from storage exigence:shop money_color

$execute as @e[type=minecraft:text_display,tag=CostDisplay,scores={IDID=$(idid)}] run function exigence:menu/item_display/void_shop_display/cost_display/update with entity @e[type=minecraft:item_display,tag=VoidShopDisplay,tag=UpdatingPurchasability,limit=1] item.components."minecraft:custom_data"

# Remove local tag
tag @s remove UpdatingPurchasability
