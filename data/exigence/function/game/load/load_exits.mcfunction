# Scheduled from start_loading_sequence

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld run function exigence:game/exit/setup_exits