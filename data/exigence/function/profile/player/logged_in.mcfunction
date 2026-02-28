# Called by profile_tick

## CONSTRAINTS
#   AS player (score quit=1..)

#====================================================================================================

say Player logged in

scoreboard players set @s quit 0

# Add local tag
tag @s add JustLoggedIn

# Call player node
scoreboard players operation #compare career.player_id = @s career.player_id
execute in exigence:profile_data positioned 8 3 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run function exigence:profile/player_node/calls/player_logged_in

# Remove loca ltag
tag @s remove JustLoggedIn