# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {ember_shop:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {ember_shop:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {ember_shop:1} run say Turning ember shop debug off
execute if data storage exigence:debug {ember_shop:0} run say Turning ember shop debug on

# Update actual value
data modify storage exigence:debug ember_shop set from storage temp debug

execute if data storage exigence:debug {ember_shop:1} as @e[type=minecraft:marker,tag=EmberShopNode] at @s run function exigence:hub/ember_shop/private/show_shop_node
execute if data storage exigence:debug {ember_shop:0} as @e[type=minecraft:marker,tag=EmberShopNode] at @s run kill @n[type=block_display,tag=EmberShopNodeDebug]