# Tags the active profile of the input player

## CONSTRAINTS
#   AS player

## OUTPUT
#   Profile with "Active" tag
#   Possible profile with "ActiveCoop" tag
#   Single profile with "ActiveChest" tag

#====================================================================================================

# Reset tags
execute in exigence:profile_data positioned 8 128 8 run tag @e[tag=ProfileNode,tag=Active,distance=..200] remove Active
execute in exigence:profile_data positioned 8 128 8 run tag @e[tag=ProfileNode,tag=ActiveCoop,distance=..200] remove ActiveCoop
execute in exigence:profile_data positioned 8 128 8 run tag @e[tag=ProfileNode,tag=ActiveChest,distance=..200] remove ActiveChest

## THIS PLAYERS PROFILE
# Store this player id for comparison
scoreboard players operation #temp Temp = @s profile.player.profile_id

# Assign active tag 
execute in exigence:profile_data positioned 8 128 8 as @e[tag=ProfileNode,distance=..200] if score @s profile.node.profile_id = #temp Temp run tag @s add Active


## FK TO MAIN PROFILE, IF COOP
# Store this player id for comparison
scoreboard players operation #temp Temp = @s profile.player.coop_profile_id

# Assign active tag to coop MAIN
execute if score #temp Temp matches 1.. in exigence:profile_data positioned 8 128 8 as @e[scores={profile.node.coop_profile_id=1..},tag=ProfileNode,distance=..200] if score @s profile.node.profile_id = #temp Temp run tag @s add ActiveCoop


# Give master tag for who has the chests, for analyzing/loading
execute in exigence:profile_data positioned 8 128 8 run tag @n[tag=ProfileNode,tag=ActiveCoop,distance=..200] add ActiveChest
execute in exigence:profile_data positioned 8 128 8 unless entity @n[tag=ProfileNode,tag=ActiveChest,distance=..200] run tag @n[tag=ProfileNode,tag=Active,distance=..200] add ActiveChest
