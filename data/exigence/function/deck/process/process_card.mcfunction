# Called from process deck, determines how many copies to load from the player's inv
# AS player

#$say Proces card $(card_name)

#$execute store result score #copies deck.process_card if items entity @s enderchest.* minecraft:paper[custom_data={card_name:"$(card_name)"}]

$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] store result score #cards_a deck.process_card if items block ~2 ~ ~0 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] store result score #cards_b deck.process_card if items block ~2 ~ ~1 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
scoreboard players set #copies deck.process_card 0
scoreboard players operation #copies deck.process_card += #cards_a deck.process_card
scoreboard players operation #copies deck.process_card += #cards_b deck.process_card

$execute if score #copies deck.process_card matches 1 run function exigence:deck/process/load_card {card_name:$(card_name),display_name:'$(display_name)',rarity:$(rarity),void:$(void),recycler:$(recycler),instant:$(instant),spellbinder:$(spellbinder),persistent:$(persistent),copies:1}
$execute if score #copies deck.process_card matches 2 run function exigence:deck/process/load_card {card_name:$(card_name),display_name:'$(display_name)',rarity:$(rarity),void:$(void),recycler:$(recycler),instant:$(instant),spellbinder:$(spellbinder),persistent:$(persistent),copies:2}
$execute if score #copies deck.process_card matches 3 run function exigence:deck/process/load_card {card_name:$(card_name),display_name:'$(display_name)',rarity:$(rarity),void:$(void),recycler:$(recycler),instant:$(instant),spellbinder:$(spellbinder),persistent:$(persistent),copies:3}
