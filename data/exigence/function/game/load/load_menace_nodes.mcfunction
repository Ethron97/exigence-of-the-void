# Scheduled from start_loading_sequence
# Load menace nodes

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Select Echo shard drop location and Ancient Ember amount
execute in minecraft:overworld run function exigence:menace/activate_menace_nodes