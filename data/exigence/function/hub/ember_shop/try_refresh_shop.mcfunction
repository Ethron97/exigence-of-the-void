# FUTURE: take rarity as input, store refresh cost for each rarity / they different

## CONSTRAINTS
#   AS Player

#====

execute unless entity @s[tag=EmberShopping] run say Not embershopping
execute unless entity @s[tag=EmberShopping] run return 1

# 1. Verify that the player can afford it
execute store result storage exigence:shop money_cost int 1 run scoreboard players get EmberShopRefresh EmberShopCost
execute as @s run function exigence:hub/ember_shop/try_purchase_macro_money with storage exigence:shop

# 2a. If purchase unsuccessful, play bad sound:
execute if score @s HasEnoughMoney matches 0 at @s positioned ~ ~1000 ~ run playsound minecraft:block.note_block.didgeridoo neutral @a ~ ~ ~ 1000 0.5

# 2b. If purchase successful, refresh shop:
#   v2 = fixed 3, +bonus
execute if score @s HasEnoughMoney matches 1 run function exigence:hub/ember_shop/refresh_shop_v2
# And playsound
execute if score @s HasEnoughMoney matches 1 run playsound minecraft:item.book.page_turn neutral @a ~ ~ ~ 1000
