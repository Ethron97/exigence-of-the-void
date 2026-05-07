# Iterate key/door animation
#   Interation begins by insert_key

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# DEBUG
execute if score toggle.door debug matches 1 if score debug.level debug matches 3.. run say (D3) Opening door 1

# Return if no one has game.door.inserting_key score > 1
execute unless score Door.1 game.door.inserting_key matches 1.. run return 1
#----------------------------------------------------------------------------------------------------

## ANIMATION / SOUND SEQUENCE
#   Interpolate key forward into the lock
execute positioned -331.5 21.0 -257.5 at @n[type=minecraft:item_display,tag=Door1Handle,distance=..10] run function exigence:door/level/door_1/opening_at

#====================================================================================================
# Remove inserting key
scoreboard players remove Door.1 game.door.inserting_key 1

# Iterate
schedule function exigence:door/level/door_1/opening 1t
