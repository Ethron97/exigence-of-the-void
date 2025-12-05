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

# Function that implements this must remove the local tag