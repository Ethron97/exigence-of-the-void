# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Main variance (lower)

# Testing model
#setblock -385 152 -22 air

# Clone staircase (storage)
execute in minecraft:overworld run clone -398 -15 -16 -423 -30 -22 -421 136 -32

# Old "main" stair
#execute in minecraft:overworld run clone -381 -7 -45 -389 -30 -56 -389 139 -56