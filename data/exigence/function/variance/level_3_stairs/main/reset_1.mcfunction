# Called from scheduler

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3) Main reset (lower)

# Testing Model
#setblock -385 152 -22 birch_slab

# Clone staircases
#   1 (lower main) (storage)
execute in minecraft:overworld run clone -398 15 -16 -423 0 -22 -421 136 -32

# Middle/l0ower main always varianced now
#execute in minecraft:overworld run clone -381 23 -45 -389 0 -56 -389 139 -56
