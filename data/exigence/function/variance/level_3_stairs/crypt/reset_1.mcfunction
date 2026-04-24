# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Crypt reset (lower)

# Testing model
#setblock -383 152 -18 birch_slab

# Clone stairs
#   1 lower
execute in minecraft:overworld run clone -360 23 30 -374 5 24 -374 141 21
