say Bonus card void!

# Proc a random VOID card on each rarity
execute as @e[type=minecraft:marker,scores={Rarity=1},tag=EmberShopNode,tag=!Purchaseable,tag=Void,sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,scores={Rarity=2},tag=EmberShopNode,tag=!Purchaseable,tag=Void,sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,scores={Rarity=3},tag=EmberShopNode,tag=!Purchaseable,tag=Void,sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
execute as @e[type=minecraft:marker,scores={Rarity=4},tag=EmberShopNode,tag=!Purchaseable,tag=Void,sort=random,limit=1] run function exigence:hub/ember_shop/make_purchasable
