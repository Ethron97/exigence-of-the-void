# Iterate key/door animation
#   Interation begins by insert_key

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# DEBUG
execute if score toggle.door debug matches 1 if score debug.level debug matches 3.. run say (D3) Opening door 3

# Return if no one has game.door.inserting_key score > 1
execute unless score Door.3 game.door.inserting_key matches 1.. run return 1
#----------------------------------------------------------------------------------------------------

## ANIMATION / SOUND SEQUENCE
#   Interpolate key forward into the lock
execute in minecraft:overworld positioned -361.5 172.0 -85.0 at @e[type=minecraft:item_display,tag=Door3Handle,distance=..10] run function exigence:door/level/door_3/opening_at

#====================================================================================================
# Remove inserting key
scoreboard players remove Door.3 game.door.inserting_key 1

# Iterate
schedule function exigence:door/level/door_3/opening 1t
