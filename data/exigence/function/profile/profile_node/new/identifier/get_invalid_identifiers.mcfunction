# Remove from array based on profiles of this player

## CONSTRAINTS
#   AS player

#=============================================================================================================

#say Get invalid identifiers

scoreboard players operation #compare profile.node.player_id = @s career.player_id

execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] if score @s profile.node.player_id = #compare profile.node.player_id \
run data modify storage exigence:temp invalid_identifiers append from entity @s data.custom_data.profile_identifier