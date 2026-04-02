# Tags the active profile of the input player

## CONSTRAINTS
#   AS player

## OUTPUT
#   Profile with "Active" tag
#   Possible profile with "ActiveCoop" tag
#   Single profile with "ActiveChest" tag

#====================================================================================================
say DEPRECATED?? Idk if this is or not, I am testing to see if this ever gets called

# Reset tags
#   Why no subfunction? TODO
execute in exigence:profile_data run tag @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=Active] remove Active
execute in exigence:profile_data run tag @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveCoop] remove ActiveCoop
execute in exigence:profile_data run tag @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest] remove ActiveChest

## THIS PLAYERS PROFILE
# Store this player id for comparison
scoreboard players operation #temp Temp = @s profile.player.profile_id

# Assign active tag 
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.profile_id = #temp Temp run tag @s add Active


## FK TO MAIN PROFILE, IF COOP
# Store this player id for comparison
scoreboard players operation #temp Temp = @s profile.player.coop_profile_id

# Assign active tag to coop MAIN
execute if score #temp Temp matches 1.. in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.coop_profile_id=1..},tag=ProfileNode] if score @s profile.node.profile_id = #temp Temp run tag @s add ActiveCoop


# Give master tag for who has the chests, for analyzing/loading
execute in exigence:profile_data run tag @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveCoop,limit=1] add ActiveChest
execute in exigence:profile_data unless entity @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest,limit=1] run tag @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=Active,limit=1] add ActiveChest
