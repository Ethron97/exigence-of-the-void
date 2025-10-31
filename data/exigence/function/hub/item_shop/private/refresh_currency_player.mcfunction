# Refreshes currency stats on player
#   Amounts, changed, holding

## CONSTRAINTS
#   AS player

#===========================================================================================

# Save old value
scoreboard players operation #old_amount shop.player.money_to_spend = @s shop.player.money_to_spend
scoreboard players operation #old_amount shop.player.research_to_spend = @s shop.player.research_to_spend

# If creative, set to 999
scoreboard players set @s[gamemode=creative] shop.player.money_to_spend 999
scoreboard players set @s[gamemode=creative] shop.player.research_to_spend 999

# Calculate how much moneys and research the player has to spend
execute as @s[gamemode=!creative] store result score @s shop.player.money_to_spend run clear @s diamond 0
execute as @s[gamemode=!creative] store result score @s shop.player.research_to_spend run clear @s minecraft:prize_pottery_sherd 0

# Update purchasability of all shop frames
#   Only update if shop.player.research_to_spend or shop.player.money_to_spend changed
scoreboard players set @s shop.player.currency_amounts_changed 0
execute unless score @s shop.player.money_to_spend = #old_amount shop.player.money_to_spend run scoreboard players set @s shop.player.currency_amounts_changed 1
execute unless score @s shop.player.research_to_spend = #old_amount shop.player.research_to_spend run scoreboard players set @s shop.player.currency_amounts_changed 1
