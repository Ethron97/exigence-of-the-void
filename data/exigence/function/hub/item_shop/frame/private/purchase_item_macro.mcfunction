$execute positioned -245.5 17 -44.5 run function exigence:hub/item_shop/frame/item/summon_item {item_name:$(item_name)}
#execute if entity @a[tag=!MoneyShopping,gamemode=creative] run tp @e[type=minecraft:item,tag=NSS] @p[gamemode=creative]
execute if entity @a[tag=MoneyShopping] run tp @e[type=minecraft:item,tag=NSS] @p[tag=MoneyShopping]
tag @e[type=minecraft:item,tag=NSS] remove NSS