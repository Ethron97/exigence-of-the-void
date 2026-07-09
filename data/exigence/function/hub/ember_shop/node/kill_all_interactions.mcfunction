# Kill all facehuggers in this room

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 4.. run say (D4 Hub) Kill all EMBER SHOP interactions

execute in exigence:hub positioned 45.5 209.0 0.5 as @e[type=minecraft:interaction,tag=EmberShopInteraction,distance=..128] run kill @s
