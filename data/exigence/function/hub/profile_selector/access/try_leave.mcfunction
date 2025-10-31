# When the player attempts to leave

## CONSTRAINTS
#   AS player

#=============================================================================================================
execute unless entity @s[tag=ProfileSelecting] run return 1
#=============================================================================================================

# Only fail case is if the player does not have a profile selected
execute unless entity @s[scores={profile.profile_id=1..}] run tellraw @s {text:"You must create a profile!",color:"red"}
execute unless entity @s[scores={profile.profile_id=1..}] at @s run tp @s ~ ~ ~-3
execute unless entity @s[scores={profile.profile_id=1..}] run return 1

function exigence:hub/profile_selector/access/leave