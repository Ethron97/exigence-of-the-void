# Refreshes currency stats on players
#   Amounts, changed, holding, total

#===========================================================================================

execute as @a[tag=ItemShopping] run function exigence:hub/item_shop/private/refresh_currency_player

# Combine all players money to total
scoreboard players set Total MoneyToSpend 0
execute as @a[tag=ItemShopping] run scoreboard players operation Total MoneyToSpend += @s MoneyToSpend

scoreboard players set Total ResearchToSpend 0
execute as @a[tag=ItemShopping] run scoreboard players operation Total ResearchToSpend += @s ResearchToSpend
