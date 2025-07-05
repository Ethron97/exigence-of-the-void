# Called after process deck

## CONSTRAINTS
#   AS ArmorStand tag=Card

#====================================================================================================

#tellraw @a[tag=ActivePlayer] [{"score":{"name":"@s","objective":"Rarity"}},{text:" rarity, "},{"score":{"name":"@s","objective":"IsVoid"}},{text:" isvoid"}]

execute if score @s Rarity matches 1 if score @s IsVoid matches 0 run scoreboard players add @a[tag=ActivePlayer] t_cardsProcessedCommon 1
execute if score @s Rarity matches 2 if score @s IsVoid matches 0 run scoreboard players add @a[tag=ActivePlayer] t_cardsProcessedUncommon 1
execute if score @s Rarity matches 3 if score @s IsVoid matches 0 run scoreboard players add @a[tag=ActivePlayer] t_cardsProcessedRare 1
execute if score @s Rarity matches 4 if score @s IsVoid matches 0 run scoreboard players add @a[tag=ActivePlayer] t_cardsProcessedLegendary 1

execute if score @s Rarity matches 1 if score @s IsVoid matches 1 run scoreboard players add @a[tag=ActivePlayer] t_cardsProcessedCommonVoid 1
execute if score @s Rarity matches 2 if score @s IsVoid matches 1 run scoreboard players add @a[tag=ActivePlayer] t_cardsProcessedUncommonVoid 1
execute if score @s Rarity matches 3 if score @s IsVoid matches 1 run scoreboard players add @a[tag=ActivePlayer] t_cardsProcessedRareVoid 1
execute if score @s Rarity matches 4 if score @s IsVoid matches 1 run scoreboard players add @a[tag=ActivePlayer] t_cardsProcessedLegendaryVoid 1

execute if score @s Rarity matches 1 if score @s IsVoid matches 0 run scoreboard players add @a[tag=ActivePlayer] cr_cardsProcessedCommon 1
execute if score @s Rarity matches 2 if score @s IsVoid matches 0 run scoreboard players add @a[tag=ActivePlayer] cr_cardsProcessedUncommon 1
execute if score @s Rarity matches 3 if score @s IsVoid matches 0 run scoreboard players add @a[tag=ActivePlayer] cr_cardsProcessedRare 1
execute if score @s Rarity matches 4 if score @s IsVoid matches 0 run scoreboard players add @a[tag=ActivePlayer] cr_cardsProcessedLegendary 1

execute if score @s Rarity matches 1 if score @s IsVoid matches 1 run scoreboard players add @a[tag=ActivePlayer] cr_cardsProcessedCommonVoid 1
execute if score @s Rarity matches 2 if score @s IsVoid matches 1 run scoreboard players add @a[tag=ActivePlayer] cr_cardsProcessedUncommonVoid 1
execute if score @s Rarity matches 3 if score @s IsVoid matches 1 run scoreboard players add @a[tag=ActivePlayer] cr_cardsProcessedRareVoid 1
execute if score @s Rarity matches 4 if score @s IsVoid matches 1 run scoreboard players add @a[tag=ActivePlayer] cr_cardsProcessedLegendaryVoid 1
