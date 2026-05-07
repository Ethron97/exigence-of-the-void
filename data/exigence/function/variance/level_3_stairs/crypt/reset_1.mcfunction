# Called from scheduler

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3) Crypt reset (lower)

# Testing model
#setblock -383 152 -18 birch_slab

# Clone stairs
#   1 lower
execute in minecraft:overworld run clone -360 23 30 -374 5 24 -374 141 21
