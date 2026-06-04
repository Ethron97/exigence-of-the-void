# Scheduled from start_loading_sequence
# Load bells

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld run function exigence:beacon/activate_beacon_nodes

# If not difficulty 5, return
execute unless score game.difficulty game.state matches 5 run return 0
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld run function exigence:beacon/prep_ardor