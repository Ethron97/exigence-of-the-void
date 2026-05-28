# Main "game loop" of the trial

## CONSTRAINTS
#   AS/AT trial node, silence

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 5.. run say (D5 Trial) Silence trial tick

## TRIAL STATE
# If player not found within the bound, loss
#   Prevents using an enderpearl to counter-tp, or otherwise cheat by escaping the room
#   Also detects if player logs out
execute positioned ~-7 ~-3 ~-7 unless entity @a[dx=13,dy=17,dz=13,scores={dead=0,game.player.vault_code=3}] run return run function exigence:door/vault/silence/trial/loss/player_not_found
#----------------------------------------------------------------------------------------------------

# Detect loss
execute as @a[scores={dead=0,game.player.vault_code=3},distance=..24] at @s if block ~ ~-1 ~ minecraft:barrier run return run function exigence:door/vault/silence/trial/loss/barrier
execute as @a[scores={dead=0,game.player.vault_code=3},distance=..24] if predicate exigence:player/on_fire run return run function exigence:door/vault/silence/trial/loss/fire
#----------------------------------------------------------------------------------------------------

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score @s trial.timer matches 660.. as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run return run function exigence:door/vault/silence/trial/win
#----------------------------------------------------------------------------------------------------

#====================================================================================================
# Clear previous sounds
tag @a remove TrialSounds_Silence
# Tag players for receiving sound
execute positioned ~-7 ~-3 ~-7 run tag @a[dx=13,dy=17,dz=13] add TrialSounds_Silence
# If game, also tag co-op watchers
execute if entity @s[tag=Game] positioned -402.5 152.0 14.5 run tag @a[distance=..3] add TrialSounds_Silence
# Update bossbar
execute if entity @s[tag=Game] run bossbar set exigence:trial_silence players @a[tag=TrialSounds_Silence]
execute if entity @s[tag=Hub] run bossbar set exigence:hub_trial_silence players @a[tag=TrialSounds_Silence]

# Pre-trial time titles
execute if score @s trial.timer matches 0 as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 20 as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 40 as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run title @s subtitle {text:"Stay on the platform",color:"yellow"}
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run title @s title ""
execute if score @s trial.timer matches 80 as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score @s trial.timer matches 600 as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 620 as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 640 as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 659 as @a[scores={dead=0,game.player.vault_code=3},distance=..24] run function exigence:door/vault/_trial/titles/blank



#====================================================================================================
## TRIAL FUNCTIONALITY

scoreboard players remove @s trial.timer.cooldown 1

execute if score @s trial.timer.cooldown matches 0 run function exigence:door/vault/silence/trial/platform/proc_step

#====================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add @s trial.timer 1

# Update bossbar
execute if entity @s[tag=Game] run function exigence:bossbar/trial/silence/update_bar
execute if entity @s[tag=Hub] run function exigence:bossbar/trial/silence/update_bar_hub
