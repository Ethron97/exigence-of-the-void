# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Crypt variance (upper)

# Testing model
#setblock -383 153 -19 air

# Clone stairs
execute in minecraft:overworld run clone -353 -8 20 -368 -25 14 -368 156 14
