# Updates tags, colors, and displays associated with communicating purchasability
# IE, updates purchasability DISPLAYS

## CONSTRAINTS
#   AS/AT item_display
#   Optionally: unless entity @s[tag=!IsTierUnlocked,tag=!IsParentResearched]

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# DEBUG
#execute if score #ttttt Temp matches 1 run say Update purchasability DISPLAYS
#say Updating purchasability displays

# Add local tag
tag @s add UpdatingPurchasability

# Reset tags
tag @s remove CanAfford
tag @s remove CanBuy
tag @s remove CanAffordResearch
tag @s remove CanResearch
tag @s remove CanPurchase

## ASSIGN TAGS
# Has enough money amount or is in creative
$execute if score #Total shop.player.money_to_spend matches $(money_cost).. run tag @s add CanAfford

# Has enough Research amount or is in creative
$execute if score #Total shop.player.research_to_spend matches $(research_cost).. run tag @s add CanAffordResearch

# Final tags (to make other IFs easier to read)
execute if entity @s[tag=CanAffordResearch,tag=IsTierUnlocked,tag=!IsResearched,tag=IsParentResearched] run tag @s add CanResearch
execute if entity @s[tag=CanAfford,tag=IsResearched,tag=IsTierUnlocked] run tag @s add CanBuy
# Combine to final tag
execute if entity @s[tag=CanBuy] run tag @s add CanPurchase
execute if entity @s[tag=CanResearch] run tag @s add CanPurchase


## GLOW COLOR
# If tier locked or no parents researched, gray
team join Spectator @s

execute if entity @s[tag=CanBuy] run team join Ember @s
execute if entity @s[tag=CanResearch] run team join LightPurple @s

# Not enough money to buy/research
execute if entity @s[tag=!CanBuy,tag=IsResearched] run team join Hazard @s
execute if entity @s[tag=!CanResearch,tag=!IsResearched] run team join Hazard @s

# If one-time-upgrade and already purchased, green
execute if entity @s[tag=IsOneTimePurchased] run team join Botany @s


## COST DISPLAY COLORS
data modify storage exigence:shop research_color set value gray
data modify storage exigence:shop money_color set value gray

# Same logic as GLOW COLOR but for chat color (can't detect teams on non-living entities)
execute if entity @s[tag=CanBuy] run data modify storage exigence:shop money_color set value aqua
execute if entity @s[tag=CanResearch] run data modify storage exigence:shop research_color set value light_purple

execute if entity @s[tag=!CanBuy,tag=IsResearched] run data modify storage exigence:shop money_color set value red
execute if entity @s[tag=!CanResearch,tag=!IsResearched] run data modify storage exigence:shop research_color set value red



## UPDATE COST DISPLAY
# Copy colors to item data
data modify entity @s item.components."minecraft:custom_data".money_color set from storage exigence:shop money_color
data modify entity @s item.components."minecraft:custom_data".research_color set from storage exigence:shop research_color

$execute if entity @s[tag=IsResearched] as @n[distance=..1,type=minecraft:text_display,tag=CostDisplay,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/cost_display/update_researched with entity @n[distance=..1,type=minecraft:item_display,tag=ItemShopDisplay,tag=UpdatingPurchasability] item.components."minecraft:custom_data"
$execute if entity @s[tag=!IsResearched,tag=!Artifact] as @n[distance=..1,type=minecraft:text_display,tag=CostDisplay,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/cost_display/update with entity @n[distance=..1,type=minecraft:item_display,tag=ItemShopDisplay,tag=UpdatingPurchasability] item.components."minecraft:custom_data"


# Update locked reason if currently hovering this
execute if entity @s[tag=Hover] run function exigence:menu/item_display/item_shop_display/locked_reason/update

# Remove local tag
tag @s remove UpdatingPurchasability
