# Called as an armorestand to create the spellbind card for it

## INPUT
#   AS Card armorstand

#==========================================================================================================

# Announce
say <<< ♻

# Call card macro for other functions
function exigence:cards/recycle_data with entity @s equipment.mainhand.components."minecraft:custom_data"

# Remove Played tag so it can be drawn again
tag @s remove Played

# Add Recycled tag so it cannot be double recycled
tag @s add Recycled

# Add scores
scoreboard players add @a[tag=ActivePlayer] profile.data.deck.cr.cards_recycled 1

# Set success score
scoreboard players set #did_recycle Temp 1

# Update displays
function exigence:deck/update_card_counter
function exigence:bossbar/deck/update_data
function exigence:bossbar/resource/update_title
