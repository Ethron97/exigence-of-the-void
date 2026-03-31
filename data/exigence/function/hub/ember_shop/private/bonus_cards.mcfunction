#say Bonus card!

# Proc a random card on each rarity
execute as @e[type=minecraft:marker,scores={Rarity=1},tag=EmberShopNode,tag=!Purchaseable,sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,scores={Rarity=2},tag=EmberShopNode,tag=!Purchaseable,sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,scores={Rarity=3},tag=EmberShopNode,tag=!Purchaseable,sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,scores={Rarity=4},tag=EmberShopNode,tag=!Purchaseable,sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable

# Decrease iteration
scoreboard players remove #BonusCards EmberShop 1

# Continue if iterations remaining
execute if score #BonusCards EmberShop matches 1.. run function exigence:hub/ember_shop/private/bonus_cards
