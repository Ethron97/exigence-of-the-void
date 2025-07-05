# Clear all existing buttons
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode] at @s run setblock ~4 ~ ~ minecraft:air

# Reset tag
tag @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=Purchaseable] remove Purchaseable

# Randomly determine whether card can be purchased this refresh
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=Void] run execute store result score @s Random run random value 1..3
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Void] run execute store result score @s Random run random value 1..4
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,scores={Random=1}] run function exigence:hub/ember_shop/make_purchasable

# Reset scores
scoreboard players set Common CardsForPurchase 0
scoreboard players set CommonVoid CardsForPurchase 0
scoreboard players set Uncommon CardsForPurchase 0
scoreboard players set UncommonVoid CardsForPurchase 0
scoreboard players set Rare CardsForPurchase 0
scoreboard players set RareVoid CardsForPurchase 0
scoreboard players set Legendary CardsForPurchase 0
scoreboard players set LegendaryVoid CardsForPurchase 0

# Retrieve amounts
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,scores={Rarity=1},tag=!Void,tag=Purchaseable] run scoreboard players add Common CardsForPurchase 1
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,scores={Rarity=1},tag=Void,tag=Purchaseable] run scoreboard players add CommonVoid CardsForPurchase 1
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,scores={Rarity=2},tag=!Void,tag=Purchaseable] run scoreboard players add Uncommon CardsForPurchase 1
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,scores={Rarity=2},tag=Void,tag=Purchaseable] run scoreboard players add UncommonVoid CardsForPurchase 1
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,scores={Rarity=3},tag=!Void,tag=Purchaseable] run scoreboard players add Rare CardsForPurchase 1
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,scores={Rarity=3},tag=Void,tag=Purchaseable] run scoreboard players add RareVoid CardsForPurchase 1
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,scores={Rarity=4},tag=!Void,tag=Purchaseable] run scoreboard players add Legendary CardsForPurchase 1
execute as @e[type=minecraft:armor_stand,tag=EmberShopNode,scores={Rarity=4},tag=Void,tag=Purchaseable] run scoreboard players add LegendaryVoid CardsForPurchase 1

# Enforce minimum cards (on a per-rarity basis)
#   At least one Void
#   At least three (by default) standard
#execute if score Common CardsForPurchase matches ..2 run say Not enough commons!
#execute if score CommonVoid CardsForPurchase matches 0 run say No common void!
#execute if score Uncommon CardsForPurchase matches ..2 run say Not enough uncommons!
#execute if score UncommonVoid CardsForPurchase matches 0 run say No uncommon void!

execute if score Common CardsForPurchase matches ..0 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=1},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score Common CardsForPurchase matches ..1 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=1},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score Common CardsForPurchase matches ..2 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=1},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score CommonVoid CardsForPurchase matches ..0 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=1},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable

execute if score Uncommon CardsForPurchase matches ..0 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=2},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score Uncommon CardsForPurchase matches ..1 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=2},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score Uncommon CardsForPurchase matches ..2 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=2},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score UncommonVoid CardsForPurchase matches ..0 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=2},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable

execute if score Rare CardsForPurchase matches ..0 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=3},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score Rare CardsForPurchase matches ..1 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=3},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score Rare CardsForPurchase matches ..2 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=3},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score RareVoid CardsForPurchase matches ..0 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=3},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable

execute if score Legendary CardsForPurchase matches ..0 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=4},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score Legendary CardsForPurchase matches ..1 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=4},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score Legendary CardsForPurchase matches ..2 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=4},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute if score LegendaryVoid CardsForPurchase matches ..0 as @e[type=minecraft:armor_stand,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=4},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable


# If there are additional cards to refresh, start iterate
#   Copy score first so we can iterate down
scoreboard players operation #BonusCards EmberShop = BonusCards EmberShop
execute if score #BonusCards EmberShop matches 1.. run function exigence:hub/ember_shop/private/bonus_cards

# Increase cost of next refresh
scoreboard players add EmberShopRefresh EmberShopCost 1

# Update sign(s)
execute store result storage exigence:shop refresh_cost int 1 run scoreboard players get EmberShopRefresh EmberShopCost
function exigence:hub/ember_shop/update_refresh_sign with storage exigence:shop