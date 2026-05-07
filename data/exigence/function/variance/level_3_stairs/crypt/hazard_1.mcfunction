# Called from scheduler

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3) Crypt hazard (lower)

# Testing model
#setblock -383 152 -18 sculk

# Clone stairs
execute in minecraft:overworld run clone -360 -37 30 -374 -55 24 -374 141 21
