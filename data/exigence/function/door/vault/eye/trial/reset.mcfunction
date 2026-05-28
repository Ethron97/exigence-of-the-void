# Cleans up everything after a trial, win or lose

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Eye trial reset

# Kill entities
kill @e[type=#exigence:eye_trial,tag=EyeTrialSetup,distance=..24]
kill @e[type=minecraft:item_display,tag=EyeTrialSetup,distance=..24]

# Reset tags
tag @s remove Crucible
tag @s remove ETICK
tag @a remove TrialSounds_Eye

# Clone ground
#execute if entity @s[tag=Game] run clone ~5 ~11 ~5 ~-5 ~11 ~-5 ~-5 ~-1 ~-5
#execute if entity @s[tag=Hub] run clone ~5 ~-7 ~5 ~-5 ~-7 ~-5 ~-5 ~-1 ~-5
setblock ~ ~-1 ~ stone_bricks

# REmove drop block preview
kill @n[type=minecraft:block_display,tag=DropBlock,distance=..2]

# Replace end portal
fill ~7 ~-4 ~7 ~-7 ~-4 ~-7 black_concrete replace end_portal

# Reset fire
function exigence:door/vault/_trial/fire/_reset

# Hide bossbar
execute if entity @s[tag=Game] run bossbar set exigence:trial_eye visible false
execute if entity @s[tag=Hub] run bossbar set exigence:hub_trial_eye visible false

# Update status
execute if entity @s[tag=Game] run scoreboard players set game.eye.trial trial.status 0
execute if entity @s[tag=Game] run scoreboard players set game.eye.crucible trial.status 0
execute if entity @s[tag=Hub] run scoreboard players set hub.eye.trial trial.status 0
execute if entity @s[tag=Hub] run scoreboard players set hub.eye.crucible trial.status 0
