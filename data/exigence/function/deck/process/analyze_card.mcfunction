# Get how many of the card are in the player's deck

## CONTRAINTS
#   AS player

## INPUT
#   STR card_name (no spaces, lowercase)
#   STR display_name 
#   INT rarity
#   BIT void
#   BIT recycler
#   BIT spellbinder
#   BIT instant
#   BIT persistent

#=========================================================================================================================

$execute in exigence:profile_data positioned 8 128 8 at @n[distance=..200,type=marker,tag=ProfileNode,tag=ActiveChest] store result score #cards_a deck.process_card if items block ~1 ~1 ~0 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
$execute in exigence:profile_data positioned 8 128 8 at @n[distance=..200,type=marker,tag=ProfileNode,tag=ActiveChest] store result score #cards_b deck.process_card if items block ~2 ~1 ~0 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
scoreboard players set #copies deck.process_card 0
scoreboard players operation #copies deck.process_card += #cards_a deck.process_card
scoreboard players operation #copies deck.process_card += #cards_b deck.process_card

# Early return if no copies found
execute if score #copies deck.process_card matches 0 run return 0

#=========================================================================================================================

$scoreboard players set #rarity deck.process_card $(rarity)

#$say analyze card $(card_name)

# Get costs
$function exigence:cards/get_cost {card_name:'$(card_name)'}

# Call the analyze function
$execute if score #copies deck.process_card matches 1.. run function exigence:cards/$(card_name)/analyze
$execute if score #rarity deck.process_card matches 1..3 if score #copies deck.process_card matches 2.. run function exigence:cards/$(card_name)/analyze
$execute if score #rarity deck.process_card matches 1..3 if score #copies deck.process_card matches 3.. run function exigence:cards/$(card_name)/analyze

execute if score #copies deck.process_card matches 1.. run scoreboard players add cards.total deck.analysis 1
execute if score #copies deck.process_card matches 2.. run scoreboard players add cards.total deck.analysis 1
execute if score #copies deck.process_card matches 3.. run scoreboard players add cards.total deck.analysis 1

# Check if too many copies
$execute if score #rarity deck.process_card matches 1..3 if score #copies deck.process_card matches 4.. run tellraw @s [{text:"Warning: you have more than 3 copies of (",color:"red"},{text:"$(display_name)",color:"gold"},{text:")",color:"red"}]
$execute if score #rarity deck.process_card matches 1..3 if score #copies deck.process_card matches 4.. run data modify storage exigence:deck_analysis errors append value [{text:"Warning: you have more than 3 copies of (",color:"red"},{text:"$(display_name)",color:"gold"},{text:")",color:"red"}]
execute if score #rarity deck.process_card matches 1..3 if score #copies deck.process_card matches 4.. run data modify storage exigence:hub too_many_copies set value true

# If legendary, >1
$execute if score #rarity deck.process_card matches 4 if score #copies deck.process_card matches 2.. run tellraw @s [{text:"Warning: you have more than 1 copy of (",color:"red"},{text:"$(display_name)",color:"gold"},{text:")",color:"red"}]
$execute if score #rarity deck.process_card matches 4 if score #copies deck.process_card matches 2.. run data modify storage exigence:deck_analysis errors append value [{text:"Warning: you have more than 1 copy of (",color:"red"},{text:"$(display_name)",color:"gold"},{text:")",color:"red"}]
execute if score #rarity deck.process_card matches 4 if score #copies deck.process_card matches 2.. run data modify storage exigence:hub too_many_copies set value true
