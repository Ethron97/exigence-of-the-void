# Called by item shop display purchase

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# If not creative, clear X
$clear @a[scores={shop.player.void_shopping_id=$(VoidShopID)},tag=ActivePlayer,gamemode=!creative] diamond $(money_cost)

# Call item summon
$execute at @s run function exigence:menu/item_display/void_shop_display/items/summon_item {item_name:$(item_name)}

execute at @s as @n[type=minecraft:item,tag=NVS,distance=..0.1] at @s run tp @s @p[tag=ActivePlayer]
execute at @s run tag @n[type=minecraft:item,tag=NVS,distance=..8] remove NVS

# Playsound
execute at @s run playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1

# 10% after each purchase that the enderman will teleport
execute store result score #random Random run random value 1..10
$execute at @s if score #random Random matches 10 as @n[type=minecraft:enderman,scores={game.void_merchant.shop_id=$(VoidShopID)},tag=VoidMerchant,tag=Loaded,distance=..10] at @s run tellraw @p[tag=VoidShopping] [{text:"[Void Merchant]",color:"dark_purple"},{text:" I must restock, but I will return elsewhere.",color:"gray"}]
$execute at @s if score #random Random matches 10 as @n[type=minecraft:enderman,scores={game.void_merchant.shop_id=$(VoidShopID)},tag=VoidMerchant,tag=Loaded,distance=..10] at @s run playsound minecraft:entity.enderman.hurt ambient @a ~ ~ ~ 1 1
$execute at @s if score #random Random matches 10 as @n[type=minecraft:enderman,scores={game.void_merchant.shop_id=$(VoidShopID)},tag=VoidMerchant,tag=Loaded,distance=..10] run function exigence:npc/game/void_merchant/teleport
