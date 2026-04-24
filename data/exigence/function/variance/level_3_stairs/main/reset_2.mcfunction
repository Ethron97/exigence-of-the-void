# Called from scheduler

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

say (D3) Main reset (upper)

# Testing Model
#setblock -386 153 -21 birch_slab

# Clone staircases
#   2 (upper main)
execute in minecraft:overworld run clone -403 23 -32 -412 5 -38 -412 156 -38

# Middle/l0ower main always varianced now
#execute in minecraft:overworld run clone -381 23 -45 -389 0 -56 -389 139 -56
