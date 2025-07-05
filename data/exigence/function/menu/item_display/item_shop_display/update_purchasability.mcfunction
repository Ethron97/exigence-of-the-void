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

# Reset tags
tag @s remove CanAfford
tag @s remove CanBuy
tag @s remove CanAffordResearch
tag @s remove CanResearch
tag @s remove CanPurchase

## ASSIGN TAGS
# Has enough money amount or is in creative
$execute if score Total MoneyToSpend matches $(money_cost).. run tag @s add CanAfford

# Has enough Research amount or is in creative
$execute if score Total ResearchToSpend matches $(research_cost).. run tag @s add CanAffordResearch

# Final tags (to make other IFs easier to read)
execute if entity @s[tag=CanAffordResearch,tag=IsTierUnlocked,tag=!IsResearched,tag=IsParentResearched] run tag @s add CanResearch
execute if entity @s[tag=CanAfford,tag=IsResearched,tag=IsTierUnlocked] run tag @s add CanBuy
# Combine to final tag
execute if entity @s[tag=CanBuy] run tag @s add CanPurchase
execute if entity @s[tag=CanResearch] run tag @s add CanPurchase



## GLOW COLOR
# If tier locked or no parents researched, gray
#execute if entity @s[tag=!IsTierUnlocked] run team join Spectator @s
#execute if entity @s[tag=!IsParentResearched] run team join Spectator @s
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

#execute if entity @s[tag=!IsTierUnlocked] run data modify storage exigence:shop research_color set value gray
#execute if entity @s[tag=!IsParentResearched] run data modify storage exigence:shop research_color set value gray



## UPDATE PARENT LINES
$execute if entity @s[tag=!IsParentResearched] as @e[type=minecraft:block_display,tag=MenuLine,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/parent_line/update {texture:"quartz_block"}
$execute if entity @s[tag=!IsTierUnlocked] as @e[type=minecraft:block_display,tag=MenuLine,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/parent_line/update {texture:"quartz_block"}
# Reset to quartz
#$execute as @e[type=minecraft:block_display,tag=MenuLine,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/parent_line/update {texture:"quartz_block"}

$execute if entity @s[tag=IsResearched] as @e[type=minecraft:block_display,tag=MenuLine,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/parent_line/update {texture:"diamond_block"}
$execute if entity @s[tag=IsTierUnlocked,tag=!IsResearched,tag=IsParentResearched] as @e[type=minecraft:block_display,tag=MenuLine,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/parent_line/update {texture:"magenta_concrete"}



## UPDATE COST DISPLAY
# Copy colors to item data
data modify entity @s item.components."minecraft:custom_data".money_color set from storage exigence:shop money_color
data modify entity @s item.components."minecraft:custom_data".research_color set from storage exigence:shop research_color

$execute if entity @s[tag=IsResearched] as @e[type=minecraft:text_display,tag=CostDisplay,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/cost_display/update_researched with entity @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=UpdatingPurchasability,limit=1] item.components."minecraft:custom_data"
$execute if entity @s[tag=!IsResearched,tag=!Artifact] as @e[type=minecraft:text_display,tag=CostDisplay,scores={IDID=$(idid)}] run function exigence:menu/item_display/item_shop_display/cost_display/update with entity @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=UpdatingPurchasability,limit=1] item.components."minecraft:custom_data"



# Update locked reason if currently hovering this
#execute if entity @s[tag=Hover] run function exigence:menu/item_display/item_shop_display/locked_reason/update
function exigence:menu/item_display/item_shop_display/locked_reason/update


tag @s remove UpdatingPurchasability
