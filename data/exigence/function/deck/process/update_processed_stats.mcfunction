# Called after process deck

## CONSTRAINTS
#   AS ArmorStand tag=Card

#====================================================================================================

# SWITCH
execute if score @s deck.card.rarity matches 1 if entity @s[tag=!IsVoid] run return run scoreboard players add @a[tag=Predungeon] profile.data.deck.cr.cards_processed_common 1
execute if score @s deck.card.rarity matches 2 if entity @s[tag=!IsVoid] run return run scoreboard players add @a[tag=Predungeon] profile.data.deck.cr.cards_processed_uncommon 1
execute if score @s deck.card.rarity matches 3 if entity @s[tag=!IsVoid] run return run scoreboard players add @a[tag=Predungeon] profile.data.deck.cr.cards_processed_rare 1
execute if score @s deck.card.rarity matches 4 if entity @s[tag=!IsVoid] run return run scoreboard players add @a[tag=Predungeon] profile.data.deck.cr.cards_processed_legendary 1
execute if score @s deck.card.rarity matches 1 if entity @s[tag=IsVoid] run return run scoreboard players add @a[tag=Predungeon] profile.data.deck.cr.cards_processed_common_void 1
execute if score @s deck.card.rarity matches 2 if entity @s[tag=IsVoid] run return run scoreboard players add @a[tag=Predungeon] profile.data.deck.cr.cards_processed_uncommon_void 1
execute if score @s deck.card.rarity matches 3 if entity @s[tag=IsVoid] run return run scoreboard players add @a[tag=Predungeon] profile.data.deck.cr.cards_processed_rare_void 1
execute if score @s deck.card.rarity matches 4 if entity @s[tag=IsVoid] run return run scoreboard players add @a[tag=Predungeon] profile.data.deck.cr.cards_processed_legendary_void 1
