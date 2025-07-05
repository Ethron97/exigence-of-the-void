# Iterate key/door animation
#   Interation begins by insert_key

#======================================================================================================

# DEBUG
#say Opening door 1

# Return if no one has InsertingKey score > 1
execute unless score Door1 InsertingKey matches 1.. run return 1

#======================================================================================================

## ANIMATION / SOUND SEQUENCE
#   Interpolate key forward into the lock
execute at @e[type=minecraft:item_display,tag=Door1Handle] run function exigence:door/level/door_1/opening_at

#======================================================================================================
# Remove inserting key
scoreboard players remove Door1 InsertingKey 1

# Iterate
schedule function exigence:door/level/door_1/opening 1t
