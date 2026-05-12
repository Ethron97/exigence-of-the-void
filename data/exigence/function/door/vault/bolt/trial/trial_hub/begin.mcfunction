# Begin Bolt trial

## CONSTRAINTS
#   AS player with game.player.vault_code = 1

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Begin Bolt (Hub)

# Call generic functions
function exigence:door/vault/_trial/_begin_hub

# Setup bolt
execute at @s as @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,tag=Hub,distance=..24] at @s run function exigence:door/vault/bolt/trial/setup

# Teleport player into the chamber
execute at @s run tp @s @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,tag=Hub,distance=..24]

# Initialize bolt bossbar
bossbar set exigence:hub_trial_bolt visible true
bossbar set exigence:hub_trial_bolt players @s
execute if entity @s[tag=Trial] run bossbar set exigence:hub_trial_bolt color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:hub_trial_bolt name [{text:"Trial of Lightning",color:"yellow"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:hub_trial_bolt color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:hub_trial_bolt name [{text:"Crucible of Lightning",color:"light_purple"}]

# If player is in game, give begin scores
# TODO add "practice" score tracking
#scoreboard players add @s[tag=ActivePlayer,tag=Trial] profile.data.vaults.cr.bolt_trial_try 1
#scoreboard players add @s[tag=ActivePlayer,tag=Crucible] profile.data.vaults.cr.bolt_crucible_try 1
