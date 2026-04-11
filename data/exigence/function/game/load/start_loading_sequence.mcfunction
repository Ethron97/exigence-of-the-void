# Start loading sequence
#   Scheduled as soon as sensors complete

#====================================================================================================

say (D3) Start loading sequence

data modify storage exigence:dungeon is_loading set value 1

# Schedule load functions
# DECK
# 

# Finish load sequence
schedule function exigence:game/load/finish_loading_sequence 71t