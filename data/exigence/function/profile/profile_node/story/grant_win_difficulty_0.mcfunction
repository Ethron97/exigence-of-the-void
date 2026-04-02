# Assign advancement and score to all relavent profiles

## CONSTRAINTS
#   AS player

#====================================================================================================

# Grant player(s) advancement
advancement grant @s[advancements={exigence:story/win_difficulty_0=false}] only exigence:story/win_difficulty_0

scoreboard players operation #compare profile.node.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. run scoreboard players operation #compare profile.node.profile_id = @s profile.player.coop_profile_id

# THIS PROFILE
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.story.adv.win_difficulty_0 1

# POSSIBLE COOP PROFILES
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.coop_profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.story.adv.win_difficulty_0 1

execute as @a[advancements={exigence:story/win_difficulty_0=false}] if score @s profile.player.coop_profile_id = #compare profile.node.profile_id \
run advancement grant @s only exigence:story/win_difficulty_0
