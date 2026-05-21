# Kill all facehuggers in this room

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 4.. run say (D4 Hub) Kill all PREDUNGEON interactions

execute in exigence:hub positioned 0.5 209.0 104.5 as @e[type=interaction,tag=PredungeonInteraction,distance=..128] run kill @s
