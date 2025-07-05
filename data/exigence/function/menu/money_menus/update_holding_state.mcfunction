# Updates score of whether player is holding currency

## CONSTRAINTS
#   AS player

#=======================================================================================================

# Store old holding
scoreboard players operation #old_holding_currency Temp = @s HoldingCurrency

# Get holding currency
execute store success score @s HoldingCurrency if items entity @s weapon.mainhand #exigence:currency

# If old<>new, currency changed = 1
execute store success score @s HoldingChanged unless score #old_holding_currency Temp = @s HoldingCurrency
