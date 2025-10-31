# Begin Bolt trial

## CONSTRAINTS
#   AS player with game.player.vault_code = 1

#===================================================================================================

# DEBUG
#say Begin Bolt

# Call generic functions
function exigence:door/vault/_trial/_begin

# Cleanup displays
function exigence:door/vault/_trial/_cleanup_displays {vault_code:1,vault_name:'Bolt'}

# Setup bolt
function exigence:door/vault/bolt/trial/setup

# Teleport player into the chamber
tp @s -413.5 152.0 -17.5

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a unless score @s game.player.vault_code matches 1 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=1}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Trial of Lightning",color:"aqua"}]
execute if entity @s[tag=Crucible] as @a unless score @s game.player.vault_code matches 1 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=1}]",color:"yellow"},\
{text:" entered the ",color:"gray"},{text:"Crucible of Lightning",color:"light_purple"}]
execute as @a unless score @s game.player.vault_code matches 1 run title @s title ""

# Initialize bolt bossbar
bossbar set exigence:trial_bolt visible true
bossbar set exigence:trial_bolt players @s
execute if entity @s[tag=Trial] run bossbar set exigence:trial_bolt color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:trial_bolt name [{text:"Trial of Lightning",color:"yellow"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_bolt color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_bolt name [{text:"Crucible of Lightning",color:"light_purple"}]

# If game is active, give begin scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.bolt_trial_try 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.bolt_crucible_try 1

# Begin tick iteration
function exigence:door/vault/bolt/trial/tick
