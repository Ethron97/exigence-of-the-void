# Begin Dune trial

## CONSTRAINTS
#   AS player with VaultCode = 2

#===================================================================================================

# DEBUG
#say Begin Dune

# Call generic functions
function exigence:door/vault/_trial/_begin

# Cleanup displays
function exigence:door/vault/_trial/_cleanup_displays {vault_code:2,vault_name:'Dune'}

# Setup dune
function exigence:door/vault/dune/trial/setup

# Teleport player into the chamber
tp @s -413.5 152.0 -1.5

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a unless score @s VaultCode matches 2 run title @s subtitle [{"selector":"@a[scores={VaultCode=2}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Trial of Dust",color:"aqua"}]
execute if entity @s[tag=Crucible] as @a unless score @s VaultCode matches 2 run title @s subtitle [{"selector":"@a[scores={VaultCode=2}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Crucible of Dust",color:"light_purple"}]
execute as @a unless score @s VaultCode matches 2 run title @s title ""

# Initialize dune bossbar
bossbar set exigence:trial_dune visible true
bossbar set exigence:trial_dune players @s
execute if entity @s[tag=Trial] run bossbar set exigence:trial_dune color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:trial_dune name [{text:"Trial of Dust",color:"yellow"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_dune color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_dune name [{text:"Crucible of Dust",color:"light_purple"}]

# If game is active, give begin scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] dune_trial_try 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] dune_crucible_try 1

# Begin tick iteration
function exigence:door/vault/dune/trial/tick
