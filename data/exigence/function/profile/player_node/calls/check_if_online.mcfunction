# Check if the corresponding player is online

## CONSTRAINTS
#   AS player node

#====================================================================================================

scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id
scoreboard players set #temp Temp 0
execute as @a if score @s career.player_id = #compare profile.node.player_id run scoreboard players set #temp Temp 1

# If player logged out, call function
execute if score #temp Temp matches 0 run function exigence:profile/player_node/calls/player_logged_out