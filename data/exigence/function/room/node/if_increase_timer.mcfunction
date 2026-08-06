# Called by node/try_increase_timer

## CONSTRAINTS
#   AS room node

## OUTPUT
#   Returns success if timer should increase (non-zero return)

#====================================================================================================

# If a room somehow unknocks and the score is bigger than the threshold, return it to the start of the threshold
execute if score @s hub.room.knock matches 0 if score @s hub.room.current_timer > @s hub.room.expire_threshold \
run scoreboard players operation @s hub.room.current_timer = @s hub.room.expire_threshold

# What conditions do we increase the timer?
#   Alwyas increase if below the expire threshold
execute if score @s hub.room.current_timer < @s hub.room.expire_threshold run return 1
#----------------------------------------------------------------------------------------------------
#   Only increase past the threshold if knock = 1
execute if score @s hub.room.knock matches 1 if score @s hub.room.current_timer >= @s hub.room.expire_threshold run return 1
#----------------------------------------------------------------------------------------------------
# ELSE, do not increase
return 0
