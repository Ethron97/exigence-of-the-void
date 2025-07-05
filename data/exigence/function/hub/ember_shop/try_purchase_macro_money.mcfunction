# To be called from a parent try_purchase source with data exigence:shop
# To be called by the player purchasing

# 1. Check if player has X money. Store in scoreboard.
execute store result score @s MoneyToSpend run clear @s diamond 0
$execute if score @s MoneyToSpend matches $(money_cost).. run scoreboard players set @s HasEnoughMoney 1
$execute unless score @s MoneyToSpend matches $(money_cost).. run scoreboard players set @s HasEnoughMoney 0

# If creative mode, always has enough
execute if entity @s[gamemode=creative] run scoreboard players set @s HasEnoughMoney 1

# 2. If yes and not creative, clear X
$execute if entity @s[gamemode=!creative] if score @s HasEnoughMoney matches 1 run clear @s diamond $(money_cost)