# Called by summon_card to data the new card

## CONSTRAINTS
#   AS ArmorStand newcard

#====================================================================================================

# Set Deck score to highest (1+ = in deck)
scoreboard players operation @s game.deck = #highest game.deck

# If game debug, glow
execute if data storage exigence:dungeon {debug:1} run data merge entity @s {Glowing:1b,CustomNameVisible:0b,Invisible:0b,Marker:0b}

# Remove local tag
tag @s remove NewCard
