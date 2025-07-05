# Begin Eye trial

## CONSTRAINTS
#   AS player with VaultCode = 2

#===================================================================================================

# DEBUG
#say Begin Eye

# Call generic functions
function exigence:door/vault/_trial/_begin

# Cleanup displays
function exigence:door/vault/_trial/_cleanup_displays {vault_code:4,vault_name:'Eye'}

# Setup eye
function exigence:door/vault/eye/trial/setup

# Teleport player into the chamber
tp @s -356.5 152.0 6.5

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a unless score @s VaultCode matches 4 run title @s subtitle [{"selector":"@a[scores={VaultCode=4}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Trial of Sight",color:"aqua"}]
execute if entity @s[tag=Crucible] as @a unless score @s VaultCode matches 4 run title @s subtitle [{"selector":"@a[scores={VaultCode=4}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Crucible of Sight",color:"light_purple"}]
execute as @a unless score @s VaultCode matches 4 run title @s title ""

# Initialize eye bossbar
bossbar set exigence:trial_eye visible true
bossbar set exigence:trial_eye players @s
execute if entity @s[tag=Trial] run bossbar set exigence:trial_eye color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:trial_eye name [{text:"Trial of Sight",color:"yellow"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_eye color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_eye name [{text:"Crucible of Sight",color:"light_purple"}]

# If game is active, give begin scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] eye_trial_try 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] eye_crucible_try 1

# Begin tick iteration
function exigence:door/vault/eye/trial/tick
