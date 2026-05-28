# Main "game loop" of the trial

## CONSTRAINTS
#   AS/AT trial node, spire

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 5.. run say (D5 Trial) Spire trial tick

## TRIAL STATE
# If player not found within the bound, loss
#   Prevents using an enderpearl to counter-tp, or otherwise cheat by escaping the room
#   Also detects if player logs out
execute positioned ~-7 ~-3 ~-7 unless entity @a[dx=13,dy=17,dz=13,scores={dead=0,game.player.vault_code=5}] run return run function exigence:door/vault/spire/trial/loss/player_not_found
#----------------------------------------------------------------------------------------------------

# Detect loss
execute as @a[scores={dead=0,game.player.vault_code=5},distance=..24] at @s if block ~ ~-1 ~ minecraft:barrier run return run function exigence:door/vault/spire/trial/loss/barrier
execute as @a[scores={dead=0,game.player.vault_code=5},distance=..24] if predicate exigence:player/on_fire run return run function exigence:door/vault/spire/trial/loss/fire
#----------------------------------------------------------------------------------------------------

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score @s trial.timer matches 660.. as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run return run function exigence:door/vault/spire/trial/win
#----------------------------------------------------------------------------------------------------

#====================================================================================================
# Clear previous sounds
tag @a remove TrialSounds_Spire
# Tag players for receiving sound
execute positioned ~-7 ~-3 ~-7 run tag @a[dx=13,dy=17,dz=13] add TrialSounds_Spire
# If game, also tag co-op watchers
execute if entity @s[tag=Game] positioned -366.5 152.0 -9.5 run tag @a[distance=..3] add TrialSounds_Spire
# Update bossbar
execute if entity @s[tag=Game] run bossbar set exigence:trial_spire players @a[tag=TrialSounds_Spire]
execute if entity @s[tag=Hub] run bossbar set exigence:hub_trial_spire players @a[tag=TrialSounds_Spire]

# Pre-trial time titles
execute if score @s trial.timer matches 0 as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 20 as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 40 as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run title @s subtitle {text:"Don't fall",color:"yellow"}
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run title @s title ""
execute if score @s trial.timer matches 80 as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score @s trial.timer matches 600 as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 620 as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 640 as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 659 as @a[scores={dead=0,game.player.vault_code=5},distance=..24] run function exigence:door/vault/_trial/titles/blank

#====================================================================================================
## TRIAL FUNCTIONALITY

execute if score @s trial.timer matches 1 run function exigence:door/vault/spire/trial/proc/proc_next
execute if score @s trial.timer matches 2 run function exigence:door/vault/spire/trial/proc/proc_next
execute if score @s trial.timer matches 3 run function exigence:door/vault/spire/trial/proc/proc_next

# Clear center platform (flashing)
execute if score @s trial.timer matches 60 run data modify entity @e[type=minecraft:block_display,tag=SpireWarning,distance=..5,limit=1] Glowing set value false
execute if score @s trial.timer matches 65 run data modify entity @e[type=minecraft:block_display,tag=SpireWarning,distance=..5,limit=1] Glowing set value true
execute if score @s trial.timer matches 70 run data modify entity @e[type=minecraft:block_display,tag=SpireWarning,distance=..5,limit=1] Glowing set value false
execute if score @s trial.timer matches 75 run data modify entity @e[type=minecraft:block_display,tag=SpireWarning,distance=..5,limit=1] Glowing set value true
execute if score @s trial.timer matches 80 run data modify entity @e[type=minecraft:block_display,tag=SpireWarning,distance=..5,limit=1] Glowing set value false
execute if score @s trial.timer matches 85 run data modify entity @e[type=minecraft:block_display,tag=SpireWarning,distance=..5,limit=1] Glowing set value true
execute if score @s trial.timer matches 90 run data modify entity @e[type=minecraft:block_display,tag=SpireWarning,distance=..5,limit=1] Glowing set value false
execute if score @s trial.timer matches 95 run data modify entity @e[type=minecraft:block_display,tag=SpireWarning,distance=..5,limit=1] Glowing set value true
execute if score @s trial.timer matches 100 run fill ~-1 ~3 ~-1 ~1 ~3 ~1 air
execute if score @s trial.timer matches 100 run kill @e[type=minecraft:block_display,tag=SpireWarning,distance=..5]

# Reduce cooldown
scoreboard players remove @s trial.timer.cooldown 1

# If cooldown is multiple of Partition, play beat
scoreboard players operation #beat trial.timer = @s trial.timer.cooldown
scoreboard players operation #beat trial.timer %= #partition trial.timer
execute if score #beat trial.timer matches 0 unless score @s trial.timer.cooldown matches 0 run playsound minecraft:block.note_block.basedrum ambient @a[tag=TrialSounds_Spire] ~ ~ ~ 2 1

# When cooldown 0, proc next and reset score
execute if score @s trial.timer.cooldown matches 0 run playsound minecraft:block.note_block.didgeridoo ambient @a[tag=TrialSounds_Spire] ~ ~ ~ 2 1
execute if score @s trial.timer.cooldown matches 0 run function exigence:door/vault/spire/trial/proc/proc_next
execute if score @s trial.timer.cooldown matches 0 run function exigence:door/vault/spire/trial/proc/reset_cooldown

#====================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add @s trial.timer 1

# Update bossbar
execute if entity @s[tag=Game] run function exigence:bossbar/trial/spire/update_bar
execute if entity @s[tag=Hub] run function exigence:bossbar/trial/spire/update_bar_hub
