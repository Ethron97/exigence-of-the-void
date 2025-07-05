# Typically called when you leave the embershop door

# 1. Clear all buttons
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode] at @s run setblock ~4 ~ ~ minecraft:air

# 2. Reset Refresh cost
scoreboard players set EmberShopRefresh EmberShopCost 0
data modify storage exigence:shop refresh_cost set value 0
function exigence:hub/ember_shop/update_refresh_sign with storage exigence:shop