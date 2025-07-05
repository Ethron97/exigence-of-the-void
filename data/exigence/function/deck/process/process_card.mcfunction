# Called from process deck, determines how many copies to load from the player's inv
# AS player

#$say Proces card $(card_name)

#$execute store result score #cards test if items entity @s enderchest.* minecraft:paper[custom_data={card_name:"$(card_name)"}]

$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] store result score #cards_a test if items block ~2 ~ ~0 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] store result score #cards_b test if items block ~2 ~ ~1 container.* minecraft:paper[custom_data={card_name:'$(card_name)'}]
scoreboard players set #cards test 0
scoreboard players operation #cards test += #cards_a test
scoreboard players operation #cards test += #cards_b test

$execute if score #cards test matches 1 run function exigence:deck/process/load_card {card_name:$(card_name),display_name:'$(display_name)',rarity:$(rarity),void:$(void),recycler:$(recycler),instant:$(instant),spellbinder:$(spellbinder),persistent:$(persistent),copies:1}
$execute if score #cards test matches 2 run function exigence:deck/process/load_card {card_name:$(card_name),display_name:'$(display_name)',rarity:$(rarity),void:$(void),recycler:$(recycler),instant:$(instant),spellbinder:$(spellbinder),persistent:$(persistent),copies:2}
$execute if score #cards test matches 3 run function exigence:deck/process/load_card {card_name:$(card_name),display_name:'$(display_name)',rarity:$(rarity),void:$(void),recycler:$(recycler),instant:$(instant),spellbinder:$(spellbinder),persistent:$(persistent),copies:3}
