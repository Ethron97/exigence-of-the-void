# Get how many of the card are in the player's deck

$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] store result score #cards_a test if items block ~2 ~ ~0 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] store result score #cards_b test if items block ~2 ~ ~1 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
scoreboard players set @s test 0
scoreboard players operation @s test += #cards_a test
scoreboard players operation @s test += #cards_b test

$scoreboard players set rarity test $(rarity)

#$say analyze card $(item) $(card_name)

# Get costs
$function exigence:cards/get_cost {card_name:'$(card_name)'}

# Call the analyze function
$execute if score @s test matches 1.. run function exigence:cards/$(card_name)/analyze
$execute if score @s test matches 2.. run function exigence:cards/$(card_name)/analyze
$execute if score @s test matches 3.. run function exigence:cards/$(card_name)/analyze

execute if score @s test matches 1.. run scoreboard players add CardsTotal DeckAnalysis 1
execute if score @s test matches 2.. run scoreboard players add CardsTotal DeckAnalysis 1
execute if score @s test matches 3.. run scoreboard players add CardsTotal DeckAnalysis 1

# Check if too many copies
$execute if score @s test matches 4.. run tellraw @s {text:"Warning: you have more than 3 copies of the ($(card_name)) card",color:"red"}
execute if score @s test matches 4.. run data modify storage exigence:hub too_many_copies set value true

# If legendary, >1
$execute if score rarity test matches 4 if score @s test matches 2.. run tellraw @s {text:"Warning: you have more than 1 copies of the ($(card_name)) Legendary card",color:"red"}
execute if score rarity test matches 4 if score @s test matches 2.. run data modify storage exigence:hub too_many_copies set value true
