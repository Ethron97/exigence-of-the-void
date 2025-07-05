# Called by pick_bush functions

## CONSTRAINTS
# AS player
# After picking bush called from setup

#====================================================================================================

scoreboard players add @s t_berryBushesPickedFromSetup 1
scoreboard players add @s cr_berryBushesPickedFromSetup 1
execute if score @s ActiveLevel matches 1 run scoreboard players add @s cr_berryBushesPickedFromSetupL1 1
execute if score @s ActiveLevel matches 1 run scoreboard players add @s t_berryBushesPickedFromSetupL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s cr_berryBushesPickedFromSetupL2 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s t_berryBushesPickedFromSetupL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s cr_berryBushesPickedFromSetupL3 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s t_berryBushesPickedFromSetupL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s cr_berryBushesPickedFromSetupL4 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s t_berryBushesPickedFromSetupL4 1
