# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Main variance (upper)

# Testing model
#setblock -386 153 -21 air

# Clone staircase
execute in minecraft:overworld run clone -403 -7 -32 -412 -25 -38 -412 156 -38
