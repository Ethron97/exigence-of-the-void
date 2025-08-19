#say Bonus card!

# Proc a random card on each rarity
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,scores={Rarity=1},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,scores={Rarity=2},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,scores={Rarity=3},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,scores={Rarity=4},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable

# Decrease iteration
scoreboard players remove #BonusCards EmberShop 1

# Continue if iterations remaining
execute if score #BonusCards EmberShop matches 1.. run function exigence:hub/ember_shop/private/bonus_cards
