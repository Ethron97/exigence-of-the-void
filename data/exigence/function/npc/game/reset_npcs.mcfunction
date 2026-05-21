# Reset game npcs

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Reset npcs

kill @e[type=minecraft:villager,tag=NPC_Supplier,tag=Game]
kill @e[type=minecraft:villager,tag=NPC_Scientist,tag=Game]
kill @e[type=minecraft:villager,tag=NPC_Petitioner,tag=Game]

execute at @e[type=minecraft:enderman,tag=VoidMerchant] run fill ~ ~2 ~ ~ ~2 ~ air replace light
execute at @e[type=minecraft:enderman,tag=VoidMerchant] run function exigence:menu/unload_menu {menu_tag:'MenuVoid'}
kill @e[type=minecraft:enderman,tag=VoidMerchant]
