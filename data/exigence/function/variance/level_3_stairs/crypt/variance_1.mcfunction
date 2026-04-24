# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Crypt variance (lower)

# Testing model
#setblock -383 152 -18 air

# Clone stairs
execute in minecraft:overworld run clone -360 -7 30 -374 -25 24 -374 141 21
