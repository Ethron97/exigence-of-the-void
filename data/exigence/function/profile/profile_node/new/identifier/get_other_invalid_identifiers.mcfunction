# Send out create commands for the co-op profiles

## CONSTRAINTS
#   AS player node (of main coop profile)

#=============================================================================================================

scoreboard players operation #compare player.node.joined_player_1 = @s player.node.joined_player_1
execute if score @s player.node.joined_player_1 matches 1.. in exigence:profile_data positioned 8 128 8 \
as @e[distance=..200,type=marker,tag=ProfileNode] if score @s profile.node.player_id = #compare player.node.joined_player_1 \
run data modify storage exigence:temp invalid_identifiers append from entity @s data.custom_data.profile_identifier

scoreboard players operation #compare player.node.joined_player_2 = @s player.node.joined_player_2
execute if score @s player.node.joined_player_2 matches 1.. in exigence:profile_data positioned 8 128 8 \
as @e[distance=..200,type=marker,tag=ProfileNode] if score @s profile.node.player_id = #compare player.node.joined_player_2 \
run data modify storage exigence:temp invalid_identifiers append from entity @s data.custom_data.profile_identifier

scoreboard players operation #compare player.node.joined_player_3 = @s player.node.joined_player_3
execute if score @s player.node.joined_player_3 matches 1.. in exigence:profile_data positioned 8 128 8 \
as @e[distance=..200,type=marker,tag=ProfileNode] if score @s profile.node.player_id = #compare player.node.joined_player_3 \
run data modify storage exigence:temp invalid_identifiers append from entity @s data.custom_data.profile_identifier
