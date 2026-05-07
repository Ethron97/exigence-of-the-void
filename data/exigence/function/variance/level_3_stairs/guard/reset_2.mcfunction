# Called from scheduler

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3) Guard reset (upper)

# Testing model
#setblock -383 153 -24 birch_slab

# Clone staircase
#   2 (upper)
execute in minecraft:overworld run clone -331 22 -51 -342 5 -57 -342 156 -57
