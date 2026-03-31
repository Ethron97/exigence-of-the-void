# Refreshes currency stats on players
#   Amounts, changed, holding, total

# I believe this exists so that we can refresh everything the instant that someone purchases something

#====================================================================================================

say Refresh global currency

scoreboard players set #Total shop.player.money_to_spend 0
scoreboard players set #Total shop.player.research_to_spend 0

#   OUTPUTS: #Total ^
execute positioned -43.5 200.0 0.5 as @a[tag=ItemShop,distance=..24] run function exigence:hub/item_shop/private/refresh_currency_player
