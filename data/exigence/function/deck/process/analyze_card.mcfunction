# Get how many of the card are in the player's deck

## CONTRAINTS
#   AS player

## INPUT
#   STR card_name (snake case)
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

# DEBUG
#$say analyze card $(card_name)

$scoreboard players set #rarity deck.process_card $(rarity)

# Get costs
$function exigence:cards/get_cost {card_name:'$(card_name)'}

# Call the analyze function
$execute if score #copies deck.process_card matches 1.. run function exigence:cards/$(card_name)/analyze
$execute if score #rarity deck.process_card matches 1..3 if score #copies deck.process_card matches 2.. run function exigence:cards/$(card_name)/analyze
$execute if score #rarity deck.process_card matches 1..3 if score #copies deck.process_card matches 3.. run function exigence:cards/$(card_name)/analyze
# Call B function, used for rare cases (usually unique card effects) of analysis needs that would be not worth adding to the spreadsheet
$execute if score #copies deck.process_card matches 1.. run function exigence:cards/$(card_name)/analyze_b {copy:1}
$execute if score #rarity deck.process_card matches 1..3 if score #copies deck.process_card matches 2.. run function exigence:cards/$(card_name)/analyze_b {copy:2}
$execute if score #rarity deck.process_card matches 1..3 if score #copies deck.process_card matches 3.. run function exigence:cards/$(card_name)/analyze_b {copy:3}

#=========================================================================================================================
## VALIDATION CHECKS
# Check if cost is greater than max loaded resource
$execute if score green.cost game.resources > resource.green.max deck.analysis run function exigence:deck/process/private/error/cost_too_great {display_name:'$(display_name)',resource:"green"}
$execute if score red.cost game.resources > resource.red.max deck.analysis run function exigence:deck/process/private/error/cost_too_great {display_name:'$(display_name)',resource:"red"}
$execute if score aqua.cost game.resources > resource.aqua.max deck.analysis run function exigence:deck/process/private/error/cost_too_great {display_name:'$(display_name)',resource:"aqua"}

# Check if too many copies (>3)
$execute if score #rarity deck.process_card matches 1..3 if score #copies deck.process_card matches 4.. \
run function exigence:deck/process/private/error/too_many_copies {display_name:'$(display_name)'}

# If legendary (>1)
$execute if score #rarity deck.process_card matches 4 if score #copies deck.process_card matches 2.. \
run function exigence:deck/process/private/error/too_many_copies_legendary {display_name:'$(display_name)'}

#=========================================================================================================================
# Increase analysis scores
scoreboard players operation cards.total deck.analysis += #copies deck.process_card
execute if score #rarity deck.process_card matches 1 run scoreboard players operation cards.common deck.analysis += #copies deck.process_card
execute if score #rarity deck.process_card matches 2 run scoreboard players operation cards.uncommon deck.analysis += #copies deck.process_card
execute if score #rarity deck.process_card matches 3 run scoreboard players operation cards.rare deck.analysis += #copies deck.process_card
execute if score #rarity deck.process_card matches 4 run scoreboard players operation cards.legendary deck.analysis += #copies deck.process_card