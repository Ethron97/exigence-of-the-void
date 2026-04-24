# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Guard reset (upper)

# Testing model
#setblock -383 153 -24 birch_slab

# Clone staircase
#   2 (upper)
execute in minecraft:overworld run clone -331 22 -51 -342 5 -57 -342 156 -57
