# Iterate forward to teleport items back to player

## CONSTRAITNS
#   AS/AT Player

#=============================================================================================================

#say Wind line loop

# Reduce iteration
scoreboard players remove #i Temp 1

# Teleport all items back to player
execute at @e[distance=..4,type=minecraft:item] run particle minecraft:small_gust ~ ~ ~ 0.1 0.1 0.1 0.1 1
tp @e[distance=..4,type=minecraft:item] @s

# Gust here
particle minecraft:small_gust ~ ~ ~ 0.2 0.2 0.2 0.1 1

# Iterate forward one block
execute if score #i Temp matches 1.. positioned ^ ^ ^1 run function exigence:hub/item_shop/frame/item/item_wind_line/private/trigger_loop
