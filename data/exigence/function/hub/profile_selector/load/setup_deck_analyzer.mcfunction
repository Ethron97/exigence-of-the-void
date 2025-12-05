# Load deck analyzer for the profile selector room

## CONSTRAINTS
#   AS profile selector node
#   AT location

#=============================================================================================================

say Setup deck analyzer from profile selector room

# Summon deck analyzer menu
#   Summons node, refresh button, and displays
execute facing entity @s feet run function exigence:hub/deck_analyzer/summon_deck_analyzer_node

# Copy score(s)
scoreboard players operation @n[distance=..1,type=marker,tag=NewDeckAnalyzer] hub.entity.profile_selector_id = @s hub.profile_selector_id

# Remove local tag
tag @n[distance=..1,type=marker,tag=NewDeckAnalyzer] remove NewDeckAnalyzer