# Called at the end of the load sequence, to start the game

## CONSTRAINTS

#====================================================================================================

say (D3) Finish loading sequence

data modify storage exigence:dungeon is_loading set value 0

# Try migrate players
#   get room id for predungeon room node
#   get all playuer nodes with that room id
#   try as player node player

# Migrate room node


# Unload predungeon


# Start game if at least one player was migrated
#   Otherwise, wait for player to join to Start the game

