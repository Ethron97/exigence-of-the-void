# Refreshes currency stats on player
#   Amounts, changed, holding

## CONSTRAINTS
#   AS player

#===========================================================================================

# Save old value
scoreboard players operation #old_amount MoneyToSpend = @s MoneyToSpend
scoreboard players operation #old_amount ResearchToSpend = @s ResearchToSpend

# If creative, set to 999
scoreboard players set @s[gamemode=creative] MoneyToSpend 999
scoreboard players set @s[gamemode=creative] ResearchToSpend 999

# Calculate how much moneys and research the player has to spend
execute as @s[gamemode=!creative] store result score @s MoneyToSpend run clear @s diamond 0
execute as @s[gamemode=!creative] store result score @s ResearchToSpend run clear @s minecraft:prize_pottery_sherd 0

# Update purchasability of all shop frames
#   Only update if ResearchToSpend or MoneyToSpend changed
scoreboard players set @s CurrencyChanged 0
execute unless score @s MoneyToSpend = #old_amount MoneyToSpend run scoreboard players set @s CurrencyChanged 1
execute unless score @s ResearchToSpend = #old_amount ResearchToSpend run scoreboard players set @s CurrencyChanged 1
