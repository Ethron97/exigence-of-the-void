# Analyze this player's deck (or coop profile deck)

## CONSTRAINTS
#   AS player

#====================================================================================================

say Analyze deck

scoreboard players operation #temp Temp = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. run scoreboard players operation #temp Temp = @s profile.player.coop_profile_id

execute in exigence:profile_data positioned 8 128 8 as @e[type=marker,tag=ProfileNode,distance=..140] if score @s profile.node.profile_id = #temp Temp \
at @s run function exigence:deck/process/analyze_deck
