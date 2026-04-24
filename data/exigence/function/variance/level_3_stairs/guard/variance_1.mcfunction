# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Guard variance (lower)

# Testing model
#setblock -382 152 -25 air

# Clone staircase
execute in minecraft:overworld run clone -318 -9 -61 -324 -25 -72 -324 141 -72
