# Begin Silence trial

## CONSTRAINTS
#   AS player with game.player.vault_code = 3

#===================================================================================================

# DEBUG
#say Begin Silence

# Make sure they can step on sculk
advancement revoke @s only exigence:listener/step_on_sculk
gamemode adventure @s[gamemode=creative]

# Call generic functions
function exigence:door/vault/_trial/_begin

# Cleanup displays
function exigence:door/vault/_trial/_cleanup_displays {vault_code:3,vault_name:'Silence'}

# Setup silence
function exigence:door/vault/silence/trial/setup

# Teleport player into the chamber
tp @s -413.5 152.0 14.5

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a unless score @s game.player.vault_code matches 3 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=3}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Trial of Silence",color:"aqua"}]
execute if entity @s[tag=Crucible] as @a unless score @s game.player.vault_code matches 3 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=3}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Crucible of Silence",color:"light_purple"}]
execute as @a unless score @s game.player.vault_code matches 3 run title @s title ""

# Initialize silence bossbar
bossbar set exigence:trial_silence visible true
bossbar set exigence:trial_silence players @s
execute if entity @s[tag=Trial] run bossbar set exigence:trial_silence color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:trial_silence name [{text:"Trial of Silence",color:"yellow"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_silence color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_silence name [{text:"Crucible of Silence",color:"light_purple"}]

# Give scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.silence_trial_try 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.silence_crucible_try 1

# Begin tick iteration
function exigence:door/vault/silence/trial/tick
