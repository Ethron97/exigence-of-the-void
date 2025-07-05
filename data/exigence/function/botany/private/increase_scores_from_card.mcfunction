# Called by pick_bush functions

## CONSTRAINTS
# AS player
# After picking bush called from card

#====================================================================================================

scoreboard players add @s cr_berryBushesPickedFromCards 1
scoreboard players add @s t_berryBushesPickedFromCards 1
execute if score @s ActiveLevel matches 1 run scoreboard players add @s cr_berryBushesPickedFromCardsL1 1
execute if score @s ActiveLevel matches 1 run scoreboard players add @s t_berryBushesPickedFromCardsL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s cr_berryBushesPickedFromCardsL2 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s t_berryBushesPickedFromCardsL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s cr_berryBushesPickedFromCardsL3 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s t_berryBushesPickedFromCardsL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s cr_berryBushesPickedFromCardsL4 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s t_berryBushesPickedFromCardsL4 1
