# To be called from EmberShopNode

# Add local tag
tag @s add TryPurchase

# Score to copy
scoreboard players operation #cost EmberShopCost = @s EmberShopCost

# If void crystal held by anyone in the shop, half price
execute if entity @s[tag=Void] as @a[tag=EmberShopping,scores={mod_VoidCrystal=1}] run scoreboard players operation #cost EmberShopCost /= 2 number

# Make sure cost is minimum of 1
scoreboard players operation #cost EmberShopCost > 1 number

# Store Cost for future
execute store result storage exigence:shop ember_cost int 1 run scoreboard players get #cost EmberShopCost

# Resolve purchase attempt
execute as @p[tag=!EmberShopping,gamemode=creative] run function exigence:hub/ember_shop/try_purchase_macro with storage exigence:shop
execute as @p[tag=EmberShopping] run function exigence:hub/ember_shop/try_purchase_macro with storage exigence:shop

# 3. If yes, delete button from wall
execute at @s if score @p[gamemode=!creative,tag=EmberShopping] HasEnoughEmbers matches 1 run setblock ~4 ~ ~ minecraft:air
execute at @s if score @p[tag=EmberShopping] HasEnoughEmbers matches 1 run playsound minecraft:block.respawn_anchor.charge neutral @a

# Remove local tag
tag @e[type=minecraft:armor_stand,tag=TryPurchase] remove TryPurchase
