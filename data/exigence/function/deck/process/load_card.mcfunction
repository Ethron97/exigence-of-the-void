# Get how many of the card are in the player's inventory (and remove them in the process)
# function exigence:deck/process/load_card {card_name:"",display_name:"",rarity:0,void:0,recycler:0,spellbinder:0}

#$say I am loading $(card_name)

# Summon the relavent armor stand(s)
$execute if score $(copies) number matches 1.. run execute at @e[type=minecraft:armor_stand,tag=DeckCardLocation] run function exigence:deck/process/summon_card
#   If legendary,  max 1 copy
$execute if score $(copies) number matches 2.. unless score $(rarity) number matches 4 run execute at @e[type=minecraft:armor_stand,tag=DeckCardLocation] run function exigence:deck/process/summon_card
$execute if score $(copies) number matches 3.. unless score $(rarity) number matches 4 run execute at @e[type=minecraft:armor_stand,tag=DeckCardLocation] run function exigence:deck/process/summon_card

# Update game.cards_played.times_processed
$scoreboard players add card.$(card_name) game.cards_played.times_processed $(copies)
$execute if data storage exigence:debug {void:0} run scoreboard players add card.$(card_name) TimesProcessedTotal $(copies)

# Summon copy of card
$execute positioned -313.5 3.00 -96.5 run function exigence:cards/summon_card {card_name:'$(card_name)'}

# Run data function on each of the newly summoned cards
$execute as @e[type=minecraft:armor_stand,tag=NewCards] run function exigence:deck/process/private/load_card_b {card_name:'$(card_name)',display_name:'$(display_name)',rarity:$(rarity),void:$(void),recycler:$(recycler),spellbinder:$(spellbinder),instant:$(instant),persistent:$(persistent)}

# Delete summoned card
execute positioned -313.5 3.00 -96.5 run kill @e[distance=..1,type=minecraft:item,tag=NCS]
