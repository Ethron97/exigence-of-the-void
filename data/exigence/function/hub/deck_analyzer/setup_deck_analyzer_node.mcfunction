# Summon a node/anchor for a deck analyzer menu

## CONSTRAINTS
#   AS marker (blank)
#   AT location (+facing)

# INTERFACE (another function calls this, then adds its own data to the newly summoned node)
#   hub.entity.profile_selector_id (optional)

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) INTERFACE summon deck analyzer

data merge entity @s {Tags:["DeckAnalyzer"],CustomName:{text:"Marker | DeckAnalyzer"}}
# Face the marker correctly (used to orient the child displays)
tp @s ~ ~ ~ ~ ~

# Generate new id
scoreboard players add #sequence hub.deck_analyzer_id 1
# Store in scoreboard and data
scoreboard players operation @s hub.deck_analyzer_id = #sequence hub.deck_analyzer_id
execute as @s store result entity @s data.custom_data.deck_analyzer_id int 1 run scoreboard players get @s hub.deck_analyzer_id

# Function that implements this must remove the local tag