# Kill all facehuggers in this room

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 4.. run say (D4 Hub) Kill all item shop interactions

execute in exigence:hub positioned -27.5 200.0 0.5 as @e[type=interaction,tag=ItemShopInteraction,distance=..128] run kill @s
