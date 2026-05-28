# Cleans up everything after a trial, win or lose

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Silence trial reset

# Kill entities
kill @e[type=minecraft:marker,tag=SilenceTrialSetup,distance=..24]

# Reset tags
tag @s remove Crucible
tag @s remove ETICK
tag @a remove TrialSounds_Silence

# Clear platform
fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 air replace minecraft:magenta_glazed_terracotta

# Replace end portal
fill ~7 ~-4 ~7 ~-7 ~-4 ~-7 black_concrete replace end_portal

# Reset fire
function exigence:door/vault/_trial/fire/_reset

# Hide bossbar
execute if entity @s[tag=Game] run bossbar set exigence:trial_silence visible false
execute if entity @s[tag=Hub] run bossbar set exigence:hub_trial_silence visible false

# Update status
execute if entity @s[tag=Game] run scoreboard players set game.silence.trial trial.status 0
execute if entity @s[tag=Game] run scoreboard players set game.silence.crucible trial.status 0
execute if entity @s[tag=Hub] run scoreboard players set hub.silence.trial trial.status 0
execute if entity @s[tag=Hub] run scoreboard players set hub.silence.crucible trial.status 0
