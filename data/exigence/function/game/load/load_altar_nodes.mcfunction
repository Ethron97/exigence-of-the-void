# Scheduled from start_loading_sequence
# Load altars

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Make sure vault/altar displays are cleaned up
execute in minecraft:overworld run function exigence:vault/node/cleanup_all_vault_altar_displays

execute in minecraft:overworld run function exigence:altar/activate_altar_nodes
