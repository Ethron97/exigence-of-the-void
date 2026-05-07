# Randomly select a card to draw from the deck.

# Get random entity in Deck
#   Spellbound = card that has been Spellbind'd but hasn't been played yet
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,scores={game.deck=1..},tag=Card,tag=!Played,tag=!Spellbound,sort=random,limit=1] run tag @s add Drawing

# If no cards left in deck, fatigue triggers
execute unless entity @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Drawing] run function exigence:deck/draw_card_fatigue

# Resolve card draw as selected card
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Drawing] run function exigence:deck/draw_card_resolve

# Update last played bossbar
#execute if entity @a[tag=ActivePlayer,scores={career.settings.card_display_bossbar=1}] run 
function exigence:deck/update_last_played_bossbar with storage exigence:last_card

# Update displays
function exigence:deck/update_card_counter
function exigence:bossbar/deck/update_data
function exigence:bossbar/resource/update_title
