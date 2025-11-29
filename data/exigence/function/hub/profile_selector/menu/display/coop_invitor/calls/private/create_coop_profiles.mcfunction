# Send out create commands for the co-op profiles

## CONSTRAINTS
#   AS profile node (of main coop profile)
#   SCORE #coop_profile_id Temp

#=============================================================================================================

say PLAYER NODE creating coop profiles

scoreboard players set #player_index Temp 2
scoreboard players operation #compare player.node.joined_player_1 = @s player.node.joined_player_1
execute if score @s player.node.joined_player_1 matches 1.. as @a[tag=Invited,tag=Joined] if score @s career.player_id = #compare player.node.joined_player_1 \
run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/create_coop_profile

scoreboard players set #player_index Temp 3
scoreboard players operation #compare player.node.joined_player_2 = @s player.node.joined_player_2
execute if score @s player.node.joined_player_2 matches 1.. as @a[tag=Invited,tag=Joined] if score @s career.player_id = #compare player.node.joined_player_2 \
run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/create_coop_profile

scoreboard players set #player_index Temp 4
scoreboard players operation #compare player.node.joined_player_3 = @s player.node.joined_player_3
execute if score @s player.node.joined_player_3 matches 1.. as @a[tag=Invited,tag=Joined] if score @s career.player_id = #compare player.node.joined_player_3 \
run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/create_coop_profile
