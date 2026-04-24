# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Crypt hazard (lower)

# Testing model
#setblock -383 152 -18 sculk

# Clone stairs
execute in minecraft:overworld run clone -360 -37 30 -374 -55 24 -374 141 21
