say [Shuffle 1 Null card into your deck]

# Save inputs
scoreboard players set #rarity deck.process_card 1
scoreboard players set #void deck.process_card 1
scoreboard players set #recycler deck.process_card 0
scoreboard players set #spellbinder deck.process_card 0
scoreboard players set #instant deck.process_card 0
scoreboard players set #persistent deck.process_card 0
scoreboard players set #copies deck.process_card 1

# Load 1 null card to deck
function exigence:deck/process/load_card {card_name:"null_card",display_name:"Null"}

# Update displays
function exigence:deck/update_card_counter
function exigence:bossbar/deck/update_data