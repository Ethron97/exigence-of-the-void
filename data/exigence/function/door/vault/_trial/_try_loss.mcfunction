# Try to call loss as the player node who was linked to this node
# If player is not online, queue the function instead

## CONSTRAINTS
#   AS Player Node

## INPUT
#   SCORE #compare career.player_id

#====================================================================================================

# Price of failure
execute if score #invoke_failure Temp matches 1 run function exigence:door/vault/_trial/_failure

scoreboard players set #player_found Temp 0

# Call loss functions as player
#   OUTPUTS: #player_found Temp
execute as @a if score @s career.player_id = #compare career.player_id run function exigence:door/vault/_trial/_loss

# If player was not found, queue function
execute if score #player_found Temp matches 0 run scoreboard players set @s player.node.queue.vault_loss 1
execute if score #player_found Temp matches 0 run scoreboard players add @s player.node.queue 1
