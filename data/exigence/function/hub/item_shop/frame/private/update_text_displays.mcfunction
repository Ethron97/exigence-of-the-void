# Has enough money amount or is in creative
$execute if entity @a[tag=MoneyShopping,scores={MoneyToSpend=$(money_cost)..}] run tag @s add CanAfford
execute if entity @a[tag=MoneyShopping,gamemode=creative] run tag @s add CanAfford

# Has enough Research amount or is in creative
$execute if entity @a[tag=MoneyShopping,scores={ResearchToSpend=$(research_cost)..}] run tag @s add CanAffordResearch
execute if entity @a[tag=MoneyShopping,gamemode=creative] run tag @s add CanAffordResearch

# IS CHILD RESEARCHED
execute at @s positioned ~ ~-1 ~ if entity @e[distance=..0.1,tag=ShopFrame,tag=IsResearched] run tag @s add IsChildResearched
execute at @s positioned ~ ~-1 ~1 if entity @e[distance=..0.1,tag=ShopFrame,tag=IsResearched] run tag @s add IsChildResearched
execute at @s positioned ~ ~-1 ~-1 if entity @e[distance=..0.1,tag=ShopFrame,tag=IsResearched] run tag @s add IsChildResearched

# Final tags
execute if entity @s[tag=CanAffordResearch,tag=IsTierUnlocked,tag=!IsResearched,tag=IsChildResearched] run tag @s add CanResearch
execute if entity @s[tag=CanAffordResearch,tag=IsTierUnlocked,tag=!IsResearched,tag=RootFrame] run tag @s add CanResearch
execute if entity @s[tag=CanAfford,tag=IsResearched] run tag @s add CanBuy

# Update text display colors
# If researched and can afford, aqua
execute if entity @s[tag=CanBuy] run data modify storage exigence:shop money_color set value aqua
# If researched but can't afford, red
execute if entity @s[tag=IsResearched] unless entity @s[tag=CanAfford] run data modify storage exigence:shop money_color set value red
# If not researched, gray
execute unless entity @s[tag=IsResearched] run data modify storage exigence:shop money_color set value gray

# If can research, purple
execute if entity @s[tag=CanResearch] run data modify storage exigence:shop research_color set value light_purple
# If unlocked, not researched, but cannot afford, red
execute if entity @s[tag=!CanAffordResearch,tag=IsTierUnlocked,tag=!IsResearched,tag=IsChildResearched] run data modify storage exigence:shop research_color set value red
execute if entity @s[tag=!CanAffordResearch,tag=IsTierUnlocked,tag=!IsResearched,tag=RootFrame] run data modify storage exigence:shop research_color set value red
# If tier locked or no children researched, gray
execute if entity @s[tag=!IsTierUnlocked] run data modify storage exigence:shop research_color set value gray
execute if entity @s[tag=!IsChildResearched,tag=!RootFrame] run data modify storage exigence:shop research_color set value gray

execute if entity @s[tag=IsResearched] run function exigence:hub/item_shop/frame/private/update_text_displays_colors_researched with storage exigence:shop
execute unless entity @s[tag=IsResearched] run function exigence:hub/item_shop/frame/private/update_text_displays_colors with storage exigence:shop
