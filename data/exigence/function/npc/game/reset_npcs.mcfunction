kill @e[type=minecraft:villager,tag=NPC_Supplier,tag=Game]
kill @e[type=minecraft:villager,tag=NPC_Scientist,tag=Game]
kill @e[type=minecraft:villager,tag=NPC_Petitioner,tag=Game]
execute at @e[type=minecraft:enderman,tag=VoidMerchant] run fill ~ ~2 ~ ~ ~2 ~ air replace light
kill @e[type=minecraft:enderman,tag=VoidMerchant]
function exigence:menu/unload_menu {menu_tag:'MenuVoid'}
