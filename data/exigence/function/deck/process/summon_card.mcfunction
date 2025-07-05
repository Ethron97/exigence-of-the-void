#say Summon card (add card to deck)

# Handle summoning of new card and moving the deck location marker
execute as @e[type=minecraft:armor_stand,tag=DeckCardLocation] at @s run function exigence:deck/process/private/summon_card_b

# Get highest current deck score
scoreboard players set #highest Deck -2147483648
execute as @e[type=minecraft:armor_stand,tag=Card] run scoreboard players operation #highest Deck > @s Deck
scoreboard players add #highest Deck 1

# Handle data for the new card
#   Assigns deck score, removes new card tag, glows if debug
execute as @e[type=minecraft:armor_stand,tag=NewCard] run function exigence:deck/process/private/summon_card_c
