# Calculate new cost based on current times refreshed
#   Called after refresh and rarity-switch

## CONSTRAINTS
#   AS refresh button

#====================================================================================================

# Store on entity
scoreboard players operation @s ember_shop.cost = #temp Temp
execute store result entity @s item.components."minecraft:custom_data".refresh_cost int 1 run scoreboard players get @s ember_shop.cost
execute store result storage exigence:shop refresh_cost int 1 run scoreboard players get @s ember_shop.cost

# Get color
#   Default is aqua
data modify storage exigence:shop refresh_cost_color set value "aqua"
#   If reduced, green
execute if score shop.refresh_modifier ember_shop matches 1.. run data modify storage exigence:shop refresh_cost_color set value "green"

# Update display
execute as @n[type=minecraft:text_display,tag=RefreshCostDisplay,distance=..5] \
run function exigence:hub/ember_shop/menu/display/refresh_button/cost_display/private/update with storage exigence:shop
