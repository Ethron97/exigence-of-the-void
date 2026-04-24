# Load echos

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Select Echo shard drop location and Ancient Ember amount
execute in minecraft:overworld run function exigence:ember/activate_echo_nodes