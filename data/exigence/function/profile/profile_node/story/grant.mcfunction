# Assign advancement and score to all relavent profiles

## CONSTRAINTS
#   AS player

## INPUT
#   STR story

#=============================================================================================================

# Grant player(s) advancement
$advancement grant @s[advancements={exigence:story/$(story)=false}] only exigence:story/$(story)


scoreboard players operation #compare profile.node.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. run scoreboard players operation #compare profile.node.profile_id = @s profile.player.coop_profile_id

# THIS PROFILE
$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.story.adv.$(story) 1

# POSSIBLE COOP PROFILES
$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] \
if score @s profile.node.coop_profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.story.adv.$(story) 1

$execute as @a[advancements={exigence:story/$(story)=false}] if score @s profile.player.coop_profile_id = #compare profile.node.profile_id \
run advancement grant @s only exigence:story/$(story)
