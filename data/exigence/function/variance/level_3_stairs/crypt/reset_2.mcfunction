# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Crypt reset (upper)

# Testing model
#setblock -383 153 -19 birch_slab

# Clone stairs
#   2 upper
execute in minecraft:overworld run clone -368 5 14 -353 22 20 -368 156 14
