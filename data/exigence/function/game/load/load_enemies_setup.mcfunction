# Scheduled from start_loading_sequence

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld as @e[type=#exigence:enemy,distance=..1000] run function exigence:enemy/spawn_enemies/setup_enemy