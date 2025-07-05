# Begin Spire trial

## CONSTRAINTS
#   AS player with VaultCode = 2

#===================================================================================================

# DEBUG
#say Begin Spire

# Call generic functions
function exigence:door/vault/_trial/_begin

# Cleanup displays
function exigence:door/vault/_trial/_cleanup_displays {vault_code:5,vault_name:'Spire'}

# Setup spire
function exigence:door/vault/spire/trial/setup

# Teleport player into the chamber
tp @s -355.5 156.0 -9.5

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a unless score @s VaultCode matches 5 run title @s subtitle [{"selector":"@a[scores={VaultCode=5}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Trial of Spire",color:"aqua"}]
execute if entity @s[tag=Crucible] as @a unless score @s VaultCode matches 5 run title @s subtitle [{"selector":"@a[scores={VaultCode=5}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Crucible of Spire",color:"light_purple"}]
execute as @a unless score @s VaultCode matches 5 run title @s title ""

# Initialize spire bossbar
bossbar set exigence:trial_spire visible true
bossbar set exigence:trial_spire players @s
execute if entity @s[tag=Trial] run bossbar set exigence:trial_spire color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:trial_spire name [{text:"Trial of Spire",color:"yellow"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_spire color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_spire name [{text:"Crucible of Spire",color:"light_purple"}]

# Give scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] spire_trial_try 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] spire_crucible_try 1

# Begin tick iteration
function exigence:door/vault/spire/trial/tick
