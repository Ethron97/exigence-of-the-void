# Called from scheduler

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3) Crypt variance (upper)

# Testing model
#setblock -383 153 -19 air

# Clone stairs
execute in minecraft:overworld run clone -353 -8 20 -368 -25 14 -368 156 14
