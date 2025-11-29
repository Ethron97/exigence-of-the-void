# Get first empty display to claim

## CONSTRAINTS
#   AS player node of player who sent the invite

## INPUT
#   SCORE #target career.player_id ->

#=============================================================================================================

say Get display

scoreboard players set #temp2 Temp 0

execute unless score @s player.node.invited_player_3 matches 1.. run scoreboard players set #temp2 Temp 3
execute unless score @s player.node.invited_player_2 matches 1.. run scoreboard players set #temp2 Temp 2
execute unless score @s player.node.invited_player_1 matches 1.. run scoreboard players set #temp2 Temp 1

# No empty slot found
execute if score #temp2 Temp matches 0 run return fail

# Update score
execute if score #temp2 Temp matches 3 run scoreboard players operation @s player.node.invited_player_3 = #target career.player_id
execute if score #temp2 Temp matches 2 run scoreboard players operation @s player.node.invited_player_2 = #target career.player_id
execute if score #temp2 Temp matches 1 run scoreboard players operation @s player.node.invited_player_1 = #target career.player_id

# Claim the respective display
execute if score #temp2 Temp matches 3 in exigence:hub positioned 999 128 6.5 as @n[distance=..200,type=text_display,tag=StatusDisplay,tag=StatusDisplay4] \
if score @s hub.entity.profile_selector_id = #compare hub.player.profile_selector_id run function exigence:hub/profile_selector/menu/display/coop_invitor/status/claim_display

execute if score #temp2 Temp matches 2 in exigence:hub positioned 999 128 6.5 as @n[distance=..200,type=text_display,tag=StatusDisplay,tag=StatusDisplay3] \
if score @s hub.entity.profile_selector_id = #compare hub.player.profile_selector_id run function exigence:hub/profile_selector/menu/display/coop_invitor/status/claim_display

execute if score #temp2 Temp matches 1 in exigence:hub positioned 999 128 6.5 as @n[distance=..200,type=text_display,tag=StatusDisplay,tag=StatusDisplay2] \
if score @s hub.entity.profile_selector_id = #compare hub.player.profile_selector_id run function exigence:hub/profile_selector/menu/display/coop_invitor/status/claim_display
