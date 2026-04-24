# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Guard variance (upper)

# Testing model
#setblock -383 153 -24 air

# Clone staircase
execute in minecraft:overworld run clone -331 -8 -51 -342 -25 -57 -342 156 -57
