# Updates score of whether player is holding currency

## CONSTRAINTS
#   AS player

#=======================================================================================================

# Store old holding
scoreboard players operation #old_holding_currency Temp = @s shop.player.holding_currency

# Get holding currency
execute store success score @s shop.player.holding_currency if items entity @s weapon.mainhand #exigence:currency

# If old<>new, currency changed = 1
execute store success score @s shop.player.holding_currency_changed unless score #old_holding_currency Temp = @s shop.player.holding_currency
