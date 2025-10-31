# Assign advancement and score to all relavent profiles

## CONSTRAINTS
#   AS player

## INPUT
#   STR story

#=============================================================================================================

# Grant player(s) advancement
$advancement grant @s[advancements={exigence:story/$(story)=false}] only exigence:story/$(story)
$advancement grant @a[tag=ActivePlayer,advancements={exigence:story/$(story)=false}] only exigence:story/$(story)


# THIS PROFILE
scoreboard players operation #compare profile.node.profile_id = @s profile.profile_id

$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.story.adv.$(story) 1

# POSSIBLE COOP PROFILES
execute unless score @s profile.coop_profile_id matches 1.. run return 0
scoreboard players operation #compare profile.coop_profile_id = @s profile.coop_profile_id

$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] \
if score @s profile.coop_profile_id = #compare profile.coop_profile_id run scoreboard players set @s profile.story.adv.$(story) 1
