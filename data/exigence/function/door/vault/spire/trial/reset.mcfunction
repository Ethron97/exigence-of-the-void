# Cleans up everything after a trial, win or lose

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Spire trial reset

# Kill entities
kill @e[type=minecraft:marker,tag=SpireTrialSetup,distance=..24]
kill @e[type=minecraft:block_display,tag=SpireTrialSetup,distance=..24]

# Reset tags
tag @s remove Crucible
tag @s remove ETICK
tag @a remove TrialSounds_Spire

# Clear spires
fill ~-9 ~-2 ~-9 ~9 ~9 ~9 air replace minecraft:purpur_pillar

# Replace end portal
fill ~7 ~-4 ~7 ~-7 ~-4 ~-7 black_concrete replace end_portal

# Center platform
fill ~-1 ~3 ~-1 ~1 ~3 ~1 polished_tuff

# Reset fire
function exigence:door/vault/_trial/fire/_reset

# Hide bossbar
execute if entity @s[tag=Game] run bossbar set exigence:trial_spire visible false
execute if entity @s[tag=Hub] run bossbar set exigence:hub_trial_spire visible false

# Update status
execute if entity @s[tag=Game] run scoreboard players set game.spire.trial trial.status 0
execute if entity @s[tag=Game] run scoreboard players set game.spire.crucible trial.status 0
execute if entity @s[tag=Hub] run scoreboard players set hub.spire.trial trial.status 0
execute if entity @s[tag=Hub] run scoreboard players set hub.spire.crucible trial.status 0

# Clear purpurpillar
#fill -364 150 -18 -347 150 -2 air replace purpur_pillar
#execute at @e[type=minecraft:marker,tag=SpireObject] run fill ~ ~ ~ ~ ~ ~ air replace purpur_pillar
