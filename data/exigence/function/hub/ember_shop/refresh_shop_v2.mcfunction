# v0.30 balance update redo
# Fixed 3 cards total per rarity instead of random stuff.

#==================================================================================================

# Clear all existing buttons
execute as @e[type=minecraft:marker,tag=EmberShopNode] at @s run setblock ~4 ~ ~ minecraft:air

# Reset tag
tag @e[type=minecraft:marker,tag=EmberShopNode,tag=Purchaseable] remove Purchaseable

# Cards available = 3 per rarity, 1 void per rarity
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=1},sort=random,limit=3] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=2},sort=random,limit=3] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=3},sort=random,limit=3] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=!Void,scores={Rarity=4},sort=random,limit=3] run function exigence:hub/ember_shop/make_purchasable

execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=1},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=2},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=3},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=4},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable

# Bonus cards (+1 per rarity, normal or void)
scoreboard players operation #BonusCards EmberShop = BonusCards EmberShop
execute if score #BonusCards EmberShop matches 1.. run function exigence:hub/ember_shop/private/bonus_cards

# Void Crystal bonus cards
execute as @a[tag=EmberShopping,scores={game.player.mod.void_crystal=1}] run function exigence:hub/ember_shop/private/bonus_card_void

# Increase cost of next refresh
scoreboard players add EmberShopRefresh EmberShopCost 1

# Update sign(s)
execute store result storage exigence:shop refresh_cost int 1 run scoreboard players get EmberShopRefresh EmberShopCost
function exigence:hub/ember_shop/update_refresh_sign with storage exigence:shop
