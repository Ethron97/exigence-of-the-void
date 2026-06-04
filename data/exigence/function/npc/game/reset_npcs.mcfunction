# Reset game npcs

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Reset npcs

kill @e[type=minecraft:villager,tag=NPC_Supplier,tag=Game]
kill @e[type=minecraft:villager,tag=NPC_Scientist,tag=Game]
kill @e[type=minecraft:villager,tag=NPC_Petitioner,tag=Game]

execute at @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:enderman,tag=VoidMerchant] run fill ~ ~2 ~ ~ ~2 ~ air replace light
execute at @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:enderman,tag=VoidMerchant] run function exigence:menu/unload_menu {menu_tag:'MenuVoid'}
kill @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:enderman,tag=VoidMerchant]
