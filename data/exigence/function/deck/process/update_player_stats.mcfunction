# Called after process deck

## CONSTRAINTS
#   AS ArmorStand tag=Card

#====================================================================================================

#tellraw @a[tag=ActivePlayer] [{"score":{"name":"@s","objective":"deck.card.rarity"}},{text:" rarity, "},{"score":{"name":"@s","objective":"deck.card.is_void"}},{text:" isvoid"}]

execute if score @s deck.card.rarity matches 1 if score @s deck.card.is_void matches 0 run scoreboard players add @a[tag=ActivePlayer] profile.data.deck.cr.cards_processed_common 1
execute if score @s deck.card.rarity matches 2 if score @s deck.card.is_void matches 0 run scoreboard players add @a[tag=ActivePlayer] profile.data.deck.cr.cards_processed_uncommon 1
execute if score @s deck.card.rarity matches 3 if score @s deck.card.is_void matches 0 run scoreboard players add @a[tag=ActivePlayer] profile.data.deck.cr.cards_processed_rare 1
execute if score @s deck.card.rarity matches 4 if score @s deck.card.is_void matches 0 run scoreboard players add @a[tag=ActivePlayer] profile.data.deck.cr.cards_processed_legendary 1

execute if score @s deck.card.rarity matches 1 if score @s deck.card.is_void matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.deck.cr.cards_processed_common_void 1
execute if score @s deck.card.rarity matches 2 if score @s deck.card.is_void matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.deck.cr.cards_processed_uncommon_void 1
execute if score @s deck.card.rarity matches 3 if score @s deck.card.is_void matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.deck.cr.cards_processed_rare_void 1
execute if score @s deck.card.rarity matches 4 if score @s deck.card.is_void matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.deck.cr.cards_processed_legendary_void 1
