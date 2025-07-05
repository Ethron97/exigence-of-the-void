# Place chests
clone -247 14 -48 -243 14 -42 -247 17 -48

# Load chests from player id
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = @a[tag=ItemShopping,tag=!CoopShopping,limit=1] PlayerID at @s run function exigence:hub/item_shop/private/load_chests_b
