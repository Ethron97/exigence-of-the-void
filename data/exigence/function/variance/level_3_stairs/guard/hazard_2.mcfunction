# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Guard hazard (upper)

# Testing model
#setblock -383 153 -24 sculk

# Clone staircase
execute in minecraft:overworld run clone -331 -38 -51 -342 -55 -57 -342 156 -57
