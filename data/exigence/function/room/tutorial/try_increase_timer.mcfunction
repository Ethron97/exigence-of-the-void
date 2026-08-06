# Called by node/try_increase_timer

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Update expire warning bossbar visibility
function exigence:bossbar/room_expire/tutorial/update_visibility

## OPTIONAL: KNOCK
#   Update whether this room has been "knocked" (conditions that we increase past the threshold)
#   For some rooms, this is deteremined by external factors (eg, someone trying to enter the room)
scoreboard players set @s hub.room.knock 0
# 1. Knock is 0
# 2. Score is equal to or past the threshold
# 3. If at least one other player is online that has not completed the tutorial
execute if score @s hub.room.knock matches 0 if score @s hub.room.current_timer >= @s hub.room.expire_threshold \
if entity @a[tag=!Tutorial,advancements={exigence:story/win_difficulty_0=false}] \
run scoreboard players set @s hub.room.knock 1

# Run condition checker
execute if function exigence:room/node/if_increase_timer run function exigence:room/tutorial/increase_timer
