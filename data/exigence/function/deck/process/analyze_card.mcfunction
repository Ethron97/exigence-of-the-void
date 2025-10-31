# Get how many of the card are in the player's deck

$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] store result score #cards_a deck.process_card if items block ~2 ~ ~0 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] store result score #cards_b deck.process_card if items block ~2 ~ ~1 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
scoreboard players set #copies deck.process_card 0
scoreboard players operation #copies deck.process_card += #cards_a deck.process_card
scoreboard players operation #copies deck.process_card += #cards_b deck.process_card

$scoreboard players set #rarity deck.process_card $(rarity)

#$say analyze card $(item) $(card_name)

# Get costs
$function exigence:cards/get_cost {card_name:'$(card_name)'}

# Call the analyze function
$execute if score #copies deck.process_card matches 1.. run function exigence:cards/$(card_name)/analyze
$execute if score #copies deck.process_card matches 2.. run function exigence:cards/$(card_name)/analyze
$execute if score #copies deck.process_card matches 3.. run function exigence:cards/$(card_name)/analyze

execute if score #copies deck.process_card matches 1.. run scoreboard players add CardsCards.Total deck.analysis 1
execute if score #copies deck.process_card matches 2.. run scoreboard players add CardsCards.Total deck.analysis 1
execute if score #copies deck.process_card matches 3.. run scoreboard players add CardsCards.Total deck.analysis 1

# Check if too many copies
$execute if score #copies deck.process_card matches 4.. run tellraw @s {text:"Warning: you have more than 3 copies of the ($(card_name)) card",color:"red"}
execute if score #copies deck.process_card matches 4.. run data modify storage exigence:hub too_many_copies set value true

# If legendary, >1
$execute if score #rarity deck.process_card matches 4 if score #copies deck.process_card matches 2.. run tellraw @s {text:"Warning: you have more than 1 copies of the ($(card_name)) Legendary card",color:"red"}
execute if score #rarity deck.process_card matches 4 if score #copies deck.process_card matches 2.. run data modify storage exigence:hub too_many_copies set value true
