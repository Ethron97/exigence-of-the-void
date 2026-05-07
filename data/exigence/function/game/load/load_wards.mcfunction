# Scheduled from start_loading_sequence
# Load wards/crystals

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld if score game.difficulty game.state matches 4 \
if score game.wards_destroyed game.dungeon.setup matches 0 run function exigence:game/other/wards/setup_wards
