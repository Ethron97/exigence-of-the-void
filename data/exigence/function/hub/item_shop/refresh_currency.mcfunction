# Refreshes currency stats on players
#   Amounts, changed, holding, total

#===========================================================================================

execute as @a[tag=ItemShopping] run function exigence:hub/item_shop/private/refresh_currency_player

# Combine all players money to total
scoreboard players set #Total shop.player.money_to_spend 0
execute as @a[tag=ItemShopping] run scoreboard players operation #Total shop.player.money_to_spend += @s shop.player.money_to_spend

scoreboard players set #Total shop.player.research_to_spend 0
execute as @a[tag=ItemShopping] run scoreboard players operation #Total shop.player.research_to_spend += @s shop.player.research_to_spend
