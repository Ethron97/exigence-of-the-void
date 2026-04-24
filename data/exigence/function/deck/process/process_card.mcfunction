# Called from process deck, determines how many copies to load

## CONSTRAINTS
#   AT profile node

## INPUT
#   STR card_name
#   STR display_name
#   INT rarity (1-4)
#   BIT void
#   BIT recycler
#   BIT spellbinder
#   BIT instant
#   BIT persistent

#====================================================================================================

#$say (D4) Try process card $(card_name)

$execute store result score #cards_a deck.process_card if items block ~1 ~1 ~0 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
$execute store result score #cards_b deck.process_card if items block ~2 ~1 ~0 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
scoreboard players set #copies deck.process_card 0
scoreboard players operation #copies deck.process_card += #cards_a deck.process_card
scoreboard players operation #copies deck.process_card += #cards_b deck.process_card

# Early return if no copies
execute if score #copies deck.process_card matches 0 run return 0
#----------------------------------------------------------------------------------------------------

#$say (D3) Process card $(card_name)

# Save inputs
$scoreboard players set #rarity deck.process_card $(rarity)
$scoreboard players set #void deck.process_card $(void)
$scoreboard players set #recycler deck.process_card $(recycler)
$scoreboard players set #spellbinder deck.process_card $(spellbinder)
$scoreboard players set #instant deck.process_card $(instant)
$scoreboard players set #persistent deck.process_card $(persistent)

#   INPUT: #copies, etc
$execute in minecraft:overworld run function exigence:deck/process/load_card {card_name:$(card_name),display_name:'$(display_name)'}
