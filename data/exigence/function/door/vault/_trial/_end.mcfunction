# Generic end function for trials
#   Handles repeated code that doesn't change between the different trials

## CONSTRAINTS
#   AS player

#==============================================================================================================

# DEBUG
#say End generic

# Play teleport sound
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~ ~ 1 1

# Reset vault code
scoreboard players set @s VaultCode 0

# Remove tag
tag @s remove Crucible
tag @s remove Trial

# If had tag TrialTrial, set gamemode creative
gamemode creative @s[tag=TrialTrial]
tag @s[tag=TrialTrial] remove ActivePlayer
tag @s[tag=TrialTrial] remove TrialTrial

# If game is not active, return
execute unless data storage exigence:dungeon {is_active:1} run return 1

# Update bossbars to only show for players who are not in a vault
#   Effectively, hide other bossbars for players within the vault
bossbar set exigence:bossbar players @a[scores={VaultCode=0}]
bossbar set exigence:last_card players @a[scores={VaultCode=0,s_cardDisplayBossbar=1}]
bossbar set exigence:resources players @a[scores={VaultCode=0,s_hideResourceBossbar=0}]

