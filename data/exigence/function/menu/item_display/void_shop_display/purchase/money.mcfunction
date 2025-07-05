# Called by item shop display purchase

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

# If not creative, clear X
$clear @a[tag=ActivePlayer,gamemode=!creative,scores={VoidShopping=$(VoidShopID)}] diamond $(money_cost)

# Call item summon
$execute at @s run function exigence:menu/item_display/void_shop_display/items/summon_item {item_name:$(item_name)}

execute as @e[type=minecraft:item,tag=NVS] at @s run tp @s @p[tag=ActivePlayer]
tag @e[type=minecraft:item,tag=NVS] remove NVS

# Playsound
execute at @s run playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1

# 10% after each purchase that the enderman will teleport
execute store result score random Random run random value 1..10
$execute if score random Random matches 10 as @e[type=minecraft:enderman,tag=VoidMerchant,tag=Loaded,scores={VoidShopID=$(VoidShopID)}] at @s run tellraw @p[tag=VoidShopping] [{text:"[Void Merchant]",color:"dark_purple"},{text:" I must restock, but I will return elsewhere.",color:"gray"}]
$execute if score random Random matches 10 as @e[type=minecraft:enderman,tag=VoidMerchant,tag=Loaded,scores={VoidShopID=$(VoidShopID)}] at @s run playsound minecraft:entity.enderman.hurt ambient @a ~ ~ ~ 1 1
$execute if score random Random matches 10 as @e[type=minecraft:enderman,tag=VoidMerchant,tag=Loaded,scores={VoidShopID=$(VoidShopID)}] run function exigence:npc/game/void_merchant/teleport
