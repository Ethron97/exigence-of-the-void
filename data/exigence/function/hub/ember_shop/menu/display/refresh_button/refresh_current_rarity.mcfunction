# Refresh the current rarity

## CONSTRAINTS
#   AT ember shop menu

#====================================================================================================

# Get rid of leftovers
execute as @e[type=minecraft:item_display,tag=Leftover,tag=Displaying,distance=..10] at @s run function exigence:hub/ember_shop/menu/display/card/unload

# Increase times refreshed tracker
execute if score shop.displaying_rarity ember_shop matches 1 run scoreboard players add shop.refreshed_1 ember_shop 1
execute if score shop.displaying_rarity ember_shop matches 2 run scoreboard players add shop.refreshed_2 ember_shop 1
execute if score shop.displaying_rarity ember_shop matches 3 run scoreboard players add shop.refreshed_3 ember_shop 1
execute if score shop.displaying_rarity ember_shop matches 4 run scoreboard players add shop.refreshed_4 ember_shop 1

# Call refresh function to remove and resummon the card displays
execute if score shop.displaying_rarity ember_shop matches 1 run function exigence:hub/ember_shop/menu/refresh/refresh_commons
execute if score shop.displaying_rarity ember_shop matches 2 run function exigence:hub/ember_shop/menu/refresh/refresh_uncommons
execute if score shop.displaying_rarity ember_shop matches 3 run function exigence:hub/ember_shop/menu/refresh/refresh_rares
execute if score shop.displaying_rarity ember_shop matches 4 run function exigence:hub/ember_shop/menu/refresh/refresh_legendaries

# Re-display current rarity
execute as @n[type=minecraft:item_display,tag=RaritySelector,tag=Selected,distance=..10] run function exigence:hub/ember_shop/menu/display/rarity_selector/select_rarity_cards
