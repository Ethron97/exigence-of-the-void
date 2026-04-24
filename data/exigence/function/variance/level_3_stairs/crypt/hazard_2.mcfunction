# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Crypt hazard (upper)

# Testing model
#setblock -383 153 -19 sculk

# Clone stairs
execute in minecraft:overworld run clone -368 -55 14 -353 -38 20 -368 156 14
