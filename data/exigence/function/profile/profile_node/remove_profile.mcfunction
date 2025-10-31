# Essentially archives the profile
#   Archive profile purely for scoreboard statistic purposes
#   Cannot be done while it is a player's active profile

## CONSTRAINTS
#   AS profile node

#=============================================================================================================
scoreboard players operation #compare profile.node.profile_id = @s profile.node.profile_id
execute as @a if score @s profile.profile_id = #compare profile.node.profile_id run tellraw @s {text:"Cannot remove a profile if a player has it loaded",color:"red"}
execute as @a if score @s profile.profile_id = #compare profile.node.profile_id run return 1
#=============================================================================================================

say I have been removed

tag @s add ArchivedProfileNode

# Clear blocks
#   We don't care about keeping items or book progress.
execute at @s run fill ~ ~-1 ~ ~15 ~2 ~ air

# Clear slot id
#   This should prevent it from being loaded from the selector
scoreboard players reset @s profile.node.slot_id

# Teleport marker to the Archive Zone
execute if score @s profile.data.winloss.attempts_total matches 1.. run say I have been archived
execute in exigence:profile_data run tp @s 0.5 1.0 -73.5

# Only archive if at least one run was attempted with this profile
execute unless score @s profile.data.winloss.attempts_total matches 1.. run kill @s[type=marker,tag=ProfileNode]
