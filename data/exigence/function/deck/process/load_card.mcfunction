# Get how many of the card are in the player's inventory (and remove them in the process)
# function exigence:deck/process/load_card {card_name:"",display_name:"",rarity:0,void:0,recycler:0,spellbinder:0}

## CONSTRAINTS
#   IN minecraft:overworld

## INPUT
#   SCORE #copies deck.process_card
#   SCORE #rarity deck.process_card
#   SCORE #void deck.process_card
#   SCORE #recycler deck.process_card
#   SCORE #spellbinder deck.process_card
#   SCORE #instant deck.process_card
#   SCORE #persistent deck.process_card

#====================================================================================================

#$say (D3) I am loading $(card_name)

# Summon the relavent armor stand(s)
execute if score #copies deck.process_card matches 1.. run execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=DeckCardLocation,limit=1] at @s run function exigence:deck/process/summon_card
#   If legendary,  max 1 copy
execute if score #copies deck.process_card matches 2.. unless score #rarity deck.process_card matches 4 run execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=DeckCardLocation,limit=1] at @s run function exigence:deck/process/summon_card
execute if score #copies deck.process_card matches 3.. unless score #rarity deck.process_card matches 4 run execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=DeckCardLocation,limit=1] at @s run function exigence:deck/process/summon_card

# Update game.cards_played.times_processed
$scoreboard players operation card.$(card_name) game.cards_played.times_processed += #copies deck.process_card
$execute if data storage exigence:debug {void:0} run scoreboard players operation card.$(card_name) TimesProcessedTotal += #copies deck.process_card

# Summon copy of card item
$execute positioned 537.5 0.0 472.5 run function exigence:cards/summon_card {card_name:'$(card_name)'}

# Run data function on each of the newly summoned cards
$execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=NewCards] run function exigence:deck/process/private/load_card_b {card_name:'$(card_name)',display_name:'$(display_name)'}

# Delete summoned card
kill @e[x=537,y=0,z=472,dx=0,dy=0,dz=0,type=minecraft:item,tag=NCS,distance=..1]
