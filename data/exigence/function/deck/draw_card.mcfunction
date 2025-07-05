# Randomly select a card to draw from the deck.

# Get random entity in Deck
#   Spellbound = card that has been Spellbind'd but hasn't been played yet
execute as @e[type=minecraft:armor_stand,tag=Card,scores={Deck=1..},tag=!Played,tag=!Spellbound,limit=1,sort=random] run tag @s add Drawing

# If no cards left in deck, fatigue triggers
execute unless entity @e[type=minecraft:armor_stand,tag=Drawing] run function exigence:deck/draw_card_fatigue

# Resolve card draw as selected card
execute as @e[type=minecraft:armor_stand,tag=Drawing] run function exigence:deck/draw_card_resolve

# Update last played bossbar
#execute if entity @a[tag=ActivePlayer,scores={s_cardDisplayBossbar=1}] run 
function exigence:deck/update_last_played_bossbar with storage exigence:last_card

# Update displays
function exigence:deck/update_card_counter
function exigence:bossbar/deck/update_data
