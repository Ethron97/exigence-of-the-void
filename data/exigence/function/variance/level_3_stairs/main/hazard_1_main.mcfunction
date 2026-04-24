# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Main hazard (lower, main)

#(OLD, "MAIN")
execute in minecraft:overworld run clone -381 -40 -47 -389 -60 -56 -389 139 -56
