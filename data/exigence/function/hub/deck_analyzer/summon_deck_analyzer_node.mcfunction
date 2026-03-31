# Summon a node/anchor for a deck analyzer menu

## CONSTRAINTS
#   AT location + facing

# INTERFACE (another function calls this, then adds its own data to the newly summoned node)
#   hub.entity.profile_selector_id (optional)

#====================================================================================================

say INTERFACE summon deck analyzer

summon minecraft:marker ~ ~ ~ {Tags:["NewDeckAnalyzer","DeckAnalyzer"],CustomName:{text:"Marker | DeckAnalyzer"}}
# Face the marker correctly (used to orient the child displays)
tp @n[type=marker,tag=NewDeckAnalyzer,distance=..1] ~ ~ ~ ~ ~

# Generate new id
scoreboard players add #sequence hub.deck_analyzer_id 1
# Store in scoreboard and data
scoreboard players operation @n[type=marker,tag=NewDeckAnalyzer,distance=..1] hub.deck_analyzer_id = #sequence hub.deck_analyzer_id
execute as @n[type=marker,tag=NewDeckAnalyzer,distance=..1] store result entity @s data.custom_data.deck_analyzer_id int 1 run scoreboard players get @s hub.deck_analyzer_id

# Function that implements this must remove the local tag