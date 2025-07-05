
# Load chests from player id
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = @a[tag=ItemShopping,tag=!CoopShopping,limit=1] PlayerID at @s run function exigence:hub/item_shop/private/save_chests_b

# Remove chests
fill -247 17 -48 -243 17 -42 air
