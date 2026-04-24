# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Main hazard (lower, storage)

# Testing Model
#setblock -385 152 -22 sculk

# Clone staircase (storage)
execute in minecraft:overworld run clone -423 -60 -22 -398 -45 -16 -421 136 -32
