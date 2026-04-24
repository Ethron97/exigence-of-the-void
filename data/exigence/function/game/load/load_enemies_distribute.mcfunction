# Scheduled from start_loading_sequence

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld run function exigence:enemy/distribute_ravagers
execute in minecraft:overworld if score game.difficulty game.state matches 3.. run function exigence:enemy/warden/distribute_wardens
execute in minecraft:overworld if score game.difficulty game.state matches 4.. run function exigence:enemy/creaking/distribute_creakings
