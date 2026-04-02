# Called by misc/tick

#====================================================================================================

# Check for players without a Player ID / Player Node?
#   Right now, they just get a player node once they enter the Profile Selector.

# For less tick functions, count how many players are online and only check online status if the count changed?
#   Is it possible for a player to log in at the exact tick someone else logs out?
#   Could also run the check when a player logs in
scoreboard players operation #old_player_count Temp = #player_count Temp
execute store result score #player_count Temp if entity @a[scores={quit=0}]

# Check for player nodes with a player offline
execute unless score #old_player_count Temp = #player_count Temp in exigence:profile_data \
as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,scores={profile.node.player_is_online=1},tag=PlayerNode] run function exigence:profile/player_node/calls/check_if_online

# Check for players that just logged in
execute as @a[scores={quit=1..}] run function exigence:profile/player/logged_in

# If someone logs in after a world reset, (ie, no quits score), remove all tags just in case they were in a room and tp them to hub
execute as @a unless score @s quits matches 0.. run function exigence:profile/player/logged_in_after_world_reset