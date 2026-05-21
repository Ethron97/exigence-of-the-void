# Summon card entity in the deck controller

## CONSTRAINTS
#   AS/AT ArmorStand tag=DeckCardLocation

#====================================================================================================

execute if score toggle.deck debug matches 1 if score debug.level debug matches 4.. run say (D4) Summon card (add card to deck)

# Handle summoning of new card and moving the deck location marker
function exigence:deck/process/private/summon_card_b

# Get highest current deck score
#scoreboard players set deck.size game.deck 0
#execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card] run scoreboard players operation deck.size game.deck > @s game.deck
scoreboard players add deck.size game.deck 1

# Handle data for the new card
#   Assigns deck score, removes new card tag, glows if debug
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=NewCard] run function exigence:deck/process/private/summon_card_c
