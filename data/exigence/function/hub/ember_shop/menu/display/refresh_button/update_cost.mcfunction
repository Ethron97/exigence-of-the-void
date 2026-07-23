# Calculate new cost based on current times refreshed
#   Called after refresh and rarity-switch

## CONSTRAINTS
#   AT ember shop menu

#====================================================================================================

# Refresh cost = displaying rarity + times refreshsed that rarity - refresh modifier
scoreboard players set #temp Temp 0
scoreboard players operation #temp Temp = shop.displaying_rarity ember_shop

execute if score shop.displaying_rarity ember_shop matches 1 run scoreboard players operation #temp Temp += shop.refreshed_1 ember_shop
execute if score shop.displaying_rarity ember_shop matches 2 run scoreboard players operation #temp Temp += shop.refreshed_2 ember_shop
execute if score shop.displaying_rarity ember_shop matches 3 run scoreboard players operation #temp Temp += shop.refreshed_3 ember_shop
execute if score shop.displaying_rarity ember_shop matches 4 run scoreboard players operation #temp Temp += shop.refreshed_4 ember_shop

scoreboard players operation #temp Temp -= shop.refresh_modifier ember_shop
scoreboard players operation #temp Temp > 0 number

# Update display
execute as @n[type=minecraft:item_display,tag=RefreshButton,distance=..5] run function exigence:hub/ember_shop/menu/display/refresh_button/cost_display/update_cost
