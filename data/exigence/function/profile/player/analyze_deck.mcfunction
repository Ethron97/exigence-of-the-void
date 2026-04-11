# Analyze this player's deck (or coop profile deck)

## CONSTRAINTS
#   AS player

#====================================================================================================

#say (D3) Analyze deck

scoreboard players operation #temp Temp = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. run scoreboard players operation #temp Temp = @s profile.player.coop_profile_id

execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.profile_id = #temp Temp \
at @s run function exigence:deck/process/analyze_deck
