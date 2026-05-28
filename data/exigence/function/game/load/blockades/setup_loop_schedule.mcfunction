# Loop over all variances 1 tick at a time

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld run function exigence:game/load/blockades/setup_loop