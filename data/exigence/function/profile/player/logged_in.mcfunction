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
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] if score @s profile.node.player_id = #compare career.player_id \
run function exigence:profile/player_node/calls/player_logged_in

# If you are logging back in with a co-op profile selected, re-sync advancements (in case other players researched etc)
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.player.profile_id at @s as @a if score @s profile.player.profile_id = #compare profile.player.profile_id \
run function exigence:profile/player/call_grant_advancements_from_scores

# Remove loca ltag
tag @s remove JustLoggedIn