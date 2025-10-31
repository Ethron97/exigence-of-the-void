# Function call from level_down (if player has found all echos) or player finds an echo

## CONSTRAINTS
#   AS player

#======================================================================================================

# Clear any current compasses
clear @s compass[custom_data={echo_id:-1,is_soulbound:true}]

# Give player compass pointing to start of the level they are currently on
execute if score @s game.player.active_level matches 1 run function exigence:player/give/private/return_compass_1
execute if score @s game.player.active_level matches 2 run function exigence:player/give/private/return_compass_2
execute if score @s game.player.active_level matches 3 run function exigence:player/give/private/return_compass_3
execute if score @s game.player.active_level matches 4 run function exigence:player/give/private/return_compass_4

data modify storage exigence:compass echo_id set value -1

function exigence:player/give/compass with storage exigence:compass
