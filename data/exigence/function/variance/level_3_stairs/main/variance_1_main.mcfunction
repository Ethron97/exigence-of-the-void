# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Main variance (lower main)

# Old "main" stair
execute in minecraft:overworld run clone -381 -10 -47 -389 -30 -56 -389 139 -56