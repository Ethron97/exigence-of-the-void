# If player is online, inform that chest wait is over

## CONSTRAINTS
#   AS player node

## INPUT
#   SCORE #compare profile.node.player_id

#====================================================================================================

scoreboard players set #player_found Temp 0

# Returns: #player_found Temp
execute as @a if score @s career.player_id = #compare profile.node.player_id run function exigence:profile/player/inform_chest_wait_over

execute if score #player_found Temp matches 0 run scoreboard players set @s player.node.queue.chest_wait_over 1
execute if score #player_found Temp matches 0 run scoreboard players add @s player.node.queue 1