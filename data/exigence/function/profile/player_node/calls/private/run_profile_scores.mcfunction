# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3 Profile) Run copy profile scores

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.profile_scores

tag @s add TryCopyProfileScores

# Call player function:
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.player.profile_id at @s as @a[tag=TryCopyProfileScores] run function exigence:profile/profile_node/load/copy_profile_scores_to_player

tag @s remove TryCopyProfileScores