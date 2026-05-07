# Called from scheduler

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3) Crypt hazard (upper)

# Testing model
#setblock -383 153 -19 sculk

# Clone stairs
execute in minecraft:overworld run clone -368 -55 14 -353 -38 20 -368 156 14
