# Iterate forward to teleport items back to player

## CONSTRAITNS
#   AS Player
#   AT position (marches forward)

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 4.. run say (D4 Player) Wind line loop

# Reduce iteration
scoreboard players remove #i Temp 1

# Add to report
execute as @e[type=minecraft:item,distance=..4] run scoreboard players add #collected Temp 1

# Teleport all items back to player
execute at @e[type=minecraft:item,distance=..4] run particle minecraft:small_gust ~ ~ ~ 0.1 0.1 0.1 0.1 1
tp @e[type=minecraft:item,distance=..4] @s

# Gust here
particle minecraft:small_gust ~ ~ ~ 0.2 0.2 0.2 0.1 1

# Iterate forward one block
execute if score #i Temp matches 1.. positioned ^ ^ ^1 run function exigence:hub/item_shop/item/item_wind_line/private/trigger_loop
