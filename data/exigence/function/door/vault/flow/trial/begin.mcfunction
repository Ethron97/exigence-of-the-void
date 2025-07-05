# Begin Flow trial

## CONSTRAINTS
#   AS player with VaultCode = 2

#===================================================================================================

# DEBUG
#say Begin Flow

# Call generic functions
function exigence:door/vault/_trial/_begin

# Cleanup displays
function exigence:door/vault/_trial/_cleanup_displays {vault_code:6,vault_name:'Flow'}

# Setup flow
function exigence:door/vault/flow/trial/setup

# Teleport player into the chamber
tp @s -355.5 152.0 -25.5

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a unless score @s VaultCode matches 6 run title @s subtitle [{"selector":"@a[scores={VaultCode=6}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Trial of Flow",color:"aqua"}]
execute if entity @s[tag=Crucible] as @a unless score @s VaultCode matches 6 run title @s subtitle [{"selector":"@a[scores={VaultCode=6}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Crucible of Flow",color:"light_purple"}]
execute as @a unless score @s VaultCode matches 6 run title @s title ""

# Initialize flow bossbar
bossbar set exigence:trial_flow visible true
bossbar set exigence:trial_flow players @s
execute if entity @s[tag=Trial] run bossbar set exigence:trial_flow color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:trial_flow name [{text:"Trial of Flow",color:"yellow"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_flow color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_flow name [{text:"Crucible of Flow",color:"light_purple"}]

# If game is active, give begin scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] flow_trial_try 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] flow_crucible_try 1

# Begin tick iteration
function exigence:door/vault/flow/trial/tick
