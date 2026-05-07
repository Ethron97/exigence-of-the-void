# Called from scheduler

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3) Main hazard (lower, storage)

# Testing Model
#setblock -385 152 -22 sculk

# Clone staircase (storage)
execute in minecraft:overworld run clone -423 -60 -22 -398 -45 -16 -421 136 -32
