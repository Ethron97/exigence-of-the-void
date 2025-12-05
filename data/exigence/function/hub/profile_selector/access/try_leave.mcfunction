# When the player attempts to leave

## CONSTRAINTS
#   AS player

#=============================================================================================================
execute unless entity @s[tag=ProfileSelecting] run return fail
#=============================================================================================================

# If player is awaiting co-op profile:
execute if entity @s[tag=Joined] run tellraw @s {text:"✖ You cannot leave the Profile Selector room while awaiting a co-op profile!",color:"red"}
execute at @s[tag=Joined] run playsound minecraft:entity.enderman.hurt ambient @s ~ ~ ~ 1 1
execute if entity @s[tag=Joined] at @s run tp @s ~ ~ ~-3
execute if entity @s[tag=Joined] run return fail

# If player does not have a profile selected:
execute unless entity @s[scores={profile.player.profile_id=1..}] run tellraw @s {text:"✖ You must create or select a profile!",color:"red"}
execute unless entity @s[scores={profile.player.profile_id=1..}] at @s run playsound minecraft:entity.enderman.hurt ambient @s ~ ~ ~ 1 1
execute unless entity @s[scores={profile.player.profile_id=1..}] at @s run tp @s ~ ~ ~-3
execute unless entity @s[scores={profile.player.profile_id=1..}] run return fail

function exigence:hub/profile_selector/access/leave