# Called from scheduler

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3) Main hazard (upper)

# Testing model
#setblock -386 153 -21 sculk

# Clone staircase
execute in minecraft:overworld run clone -403 -37 -32 -412 -55 -38 -412 156 -38
