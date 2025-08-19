say Bonus card void!

# Proc a random VOID card on each rarity
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=1},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=2},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=3},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,tag=EmberShopNode,tag=!Purchaseable,tag=Void,scores={Rarity=4},sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
