# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Guard reset (lower)

# Testing model
#setblock -382 152 -25 birch_slab

# Clone staircase
#   1 (lower)
execute in minecraft:overworld run clone -318 21 -61 -324 5 -72 -324 141 -72
