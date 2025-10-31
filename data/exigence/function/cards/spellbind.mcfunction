# Called as an armorestand to create the spellbind card for it

## INPUT
#   AS Card armorstand

#==========================================================================================================

# Announce
say <<< 🧾

# Add Spellbound tag so we know this card is in the player's inventory
tag @s add Spellbound

# Add card to player(s) inventory
execute positioned -384.5 37.00 -116.5 run function exigence:cards/create_spellbind with entity @s equipment.mainhand.components."minecraft:custom_data"

# Add scores
scoreboard players add @a[tag=ActivePlayer] profile.data.deck.cr.cards_spellbound 1

# Set success score
scoreboard players set #did_spellbind Temp 1

# Update displays
function exigence:deck/update_card_counter
function exigence:bossbar/deck/update_data
function exigence:bossbar/resource/update_title
