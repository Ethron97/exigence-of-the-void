# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Main hazard (upper)

# Testing model
#setblock -386 153 -21 sculk

# Clone staircase
execute in minecraft:overworld run clone -403 -37 -32 -412 -55 -38 -412 156 -38
