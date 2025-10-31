# Iterate key/door animation
#   Interation begins by insert_key

#======================================================================================================

# DEBUG
#say Opening door 2

# Return if no one has InsertingKey score > 1
execute unless score Door.2 game.door.inserting_key matches 1.. run return 1

#======================================================================================================

## ANIMATION / SOUND SEQUENCE
#   Interpolate key forward into the lock
execute at @e[type=minecraft:item_display,tag=Door2Handle] run function exigence:door/level/door_2/opening_at

#======================================================================================================
# Remove inserting key
scoreboard players remove Door.2 game.door.inserting_key 1

# Iterate
schedule function exigence:door/level/door_2/opening 1t
