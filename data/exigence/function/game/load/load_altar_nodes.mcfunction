# Scheduled from start_loading_sequence
# Load altars

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld run function exigence:altar/activate_altar_nodes
