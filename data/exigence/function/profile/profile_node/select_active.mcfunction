# Tags the active profile of the input player

## CONSTRAINTS
#   AS player

## OUTPUT
#   Profile with "Active" tag
#   Possible profile with "ActiveCoop" tag
#   Single profile with "ActiveChest" tag

#=========================================================================================================================

# Reset tags
execute in exigence:profile_data positioned 8 128 8 run tag @e[distance=..200,tag=ProfileNode,tag=Active] remove Active
execute in exigence:profile_data positioned 8 128 8 run tag @e[distance=..200,tag=ProfileNode,tag=ActiveCoop] remove ActiveCoop
execute in exigence:profile_data positioned 8 128 8 run tag @e[distance=..200,tag=ProfileNode,tag=ActiveChest] remove ActiveChest

## THIS PLAYERS PROFILE
# Store this player id for comparison
scoreboard players operation #temp Temp = @s profile.player.profile_id

# Assign active tag 
execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,tag=ProfileNode] if score @s profile.node.profile_id = #temp Temp run tag @s add Active


## FK TO MAIN PROFILE, IF COOP
# Store this player id for comparison
scoreboard players operation #temp Temp = @s profile.player.coop_profile_id

# Assign active tag to coop MAIN
execute if score #temp Temp matches 1.. in exigence:profile_data positioned 8 128 8 as @e[distance=..200,tag=ProfileNode,scores={profile.node.coop_profile_id=1..}] if score @s profile.node.profile_id = #temp Temp run tag @s add ActiveCoop


# Give master tag for who has the chests, for analyzing/loading
execute in exigence:profile_data positioned 8 128 8 run tag @n[distance=..200,tag=ProfileNode,tag=ActiveCoop] add ActiveChest
execute in exigence:profile_data positioned 8 128 8 unless entity @n[distance=..200,tag=ProfileNode,tag=ActiveChest] run tag @n[distance=..200,tag=ProfileNode,tag=Active] add ActiveChest
