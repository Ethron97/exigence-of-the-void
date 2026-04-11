# Kill all facehuggers in this room

#====================================================================================================

#say (D3) Kill all item shop interactions

execute in exigence:hub positioned -27.5 200.0 0.5 as @e[type=interaction,tag=ItemShopInteraction,distance=..128] run kill @s
