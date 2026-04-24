# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Main reset (lower main)

# Middle/l0ower main always varianced now
execute in minecraft:overworld run clone -381 20 -47 -389 0 -56 -389 139 -56
