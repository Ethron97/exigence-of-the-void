# Called from scheduler

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3) Guard reset (lower)

# Testing model
#setblock -382 152 -25 birch_slab

# Clone staircase
#   1 (lower)
execute in minecraft:overworld run clone -318 21 -61 -324 5 -72 -324 141 -72
