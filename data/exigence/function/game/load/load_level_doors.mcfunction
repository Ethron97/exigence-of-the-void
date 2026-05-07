# Scheduled from start_loading_sequence

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld run function exigence:door/level/reset_doors

execute in minecraft:overworld run function exigence:treasure/keys/drop_level_keys