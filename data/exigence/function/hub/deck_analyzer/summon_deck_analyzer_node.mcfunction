# Summon a node/anchor for a deck analyzer menu

## CONSTRAINTS
#   AT location + facing

# INTERFACE (another function calls this, then adds its own data to the newly summoned node)
#   hub.entity.profile_selector_id (optional)

#=============================================================================================================

say INTERFACE summon deck analyzer

summon marker ~ ~ ~ {Tags:["NewDeckAnalyzer","DeckAnalyzer"]}
# Face the marker correctly (used to orient the child displays)
tp @n[distance=..1,type=marker,tag=NewDeckAnalyzer] ~ ~ ~ ~ ~

# Generate new id
scoreboard players add #sequence hub.deck_analyzer_id 1
# Store in scoreboard and data
scoreboard players operation @n[distance=..1,type=marker,tag=NewDeckAnalyzer] hub.deck_analyzer_id = #sequence hub.deck_analyzer_id
execute as @n[distance=..1,type=marker,tag=NewDeckAnalyzer] store result entity @s data.custom_data.deck_analyzer_id int 1 run scoreboard players get @s hub.deck_analyzer_id

# Function that implements this must remove the local tag