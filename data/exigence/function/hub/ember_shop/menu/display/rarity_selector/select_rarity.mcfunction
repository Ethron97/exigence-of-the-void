# Display this rarity

## CONSTRAINTS
#   AS rarity display
#   AT ember shop node

#====================================================================================================
execute if entity @s[tag=Selected] run return run say I was already selected? Cannot select
#----------------------------------------------------------------------------------------------------

# Press button into the altar
execute at @s run tp @s ~0.035 ~ ~

# Tags
tag @s add Selected

# Save current displaying
scoreboard players operation shop.displaying_rarity ember_shop = @s ember_shop.rarity

# Update title
data modify entity @n[type=minecraft:text_display,tag=RaritySelectorTitle,distance=..5] text set from entity @s item.components."minecraft:custom_name"

# Call part 2
function exigence:hub/ember_shop/menu/display/rarity_selector/select_rarity_cards

# Update title/lore for Refresh button
data modify entity @n[type=minecraft:item_display,tag=RefreshButton,distance=..5] item.components."minecraft:lore" set from entity @s item.components."minecraft:lore"
data modify entity @n[type=minecraft:text_display,tag=RefreshDisplay,distance=..5] text set from entity @s item.components."minecraft:lore"[1]

