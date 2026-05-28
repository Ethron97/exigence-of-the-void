# Main "game loop" of the trial

## CONSTRAINTS
#   AS/AT trial node, dune

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 5.. run say (D5 Trial) Dune trial tick

## TRIAL STATE
# If player not found within the bound, loss
#   Prevents using an enderpearl to counter-tp, or otherwise cheat by escaping the room
#   Also detects if player logs out
execute positioned ~-7 ~-3 ~-7 unless entity @a[dx=13,dy=17,dz=13,scores={dead=0,game.player.vault_code=2}] run return run function exigence:door/vault/dune/trial/loss/player_not_found
#----------------------------------------------------------------------------------------------------

# Detect loss
execute as @a[scores={dead=0,game.player.vault_code=2},distance=..24] at @s if block ~ ~-1 ~ minecraft:barrier run return run function exigence:door/vault/dune/trial/loss/barrier
execute as @a[scores={dead=0,game.player.vault_code=2},distance=..24] if predicate exigence:player/on_fire run return run function exigence:door/vault/dune/trial/loss/fire
#----------------------------------------------------------------------------------------------------

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score @s trial.timer matches 660.. as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run return run function exigence:door/vault/dune/trial/win
#----------------------------------------------------------------------------------------------------

#====================================================================================================
# Clear previous sounds
tag @a remove TrialSounds_Dune
# Tag players for receiving sound
execute positioned ~-7 ~-3 ~-7 run tag @a[dx=13,dy=17,dz=13] add TrialSounds_Dune
# If game, also tag co-op watchers
execute if entity @s[tag=Game] positioned -403.5 152.0 -1.5 run tag @a[distance=..3] add TrialSounds_Dune
# Update bossbar
execute if entity @s[tag=Game] run bossbar set exigence:trial_dune players @a[tag=TrialSounds_Dune]
execute if entity @s[tag=Hub] run bossbar set exigence:hub_trial_dune players @a[tag=TrialSounds_Dune]

# Pre-trial time titles
execute if score @s trial.timer matches 0 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 20 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 40 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run title @s subtitle {text:"Avoid the skulls",color:"yellow"}
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run title @s title ""
execute if score @s trial.timer matches 80 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score @s trial.timer matches 600 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 620 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 640 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 659 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run function exigence:door/vault/_trial/titles/blank



#====================================================================================================
## TRIAL FUNCTIONALITY

# Skulls update
#   Reduce scores (cooldown before they start moving)
scoreboard players remove @e[type=minecraft:item_display,scores={trial.object.timer=1..},tag=DuneSkull,distance=..24] trial.object.timer 1

# Move skulls
execute as @e[type=minecraft:item_display,scores={trial.object.timer=0},tag=DuneSkull,tag=White,distance=..24] run function exigence:door/vault/dune/trial/skull/white/move
execute as @e[type=minecraft:item_display,scores={trial.object.timer=0},tag=DuneSkull,tag=Black,distance=..24] run function exigence:door/vault/dune/trial/skull/black/move

scoreboard players set #hit_player Temp 0
#   OUPUTS: #hit_player Temp
execute as @a[scores={dead=0,game.player.vault_code=2},distance=..24] at @s run function exigence:door/vault/dune/trial/skull/check_hit

# If player was hit, end trial now
execute if score #hit_player Temp matches 1 as @a[scores={dead=0,game.player.vault_code=2},distance=..24] run return run function exigence:door/vault/dune/trial/loss/skull
#----------------------------------------------------------------------------------------------------

# Reduce skull trial timer
scoreboard players remove @s trial.timer.cooldown 1

# Proc new skulls
execute if score @s trial.timer.cooldown matches ..0 unless score @s trial.timer matches 630.. run function exigence:door/vault/dune/trial/skull/proc_skulls



#====================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add @s trial.timer 1

# Update bossbar
execute if entity @s[tag=Game] run function exigence:bossbar/trial/dune/update_bar
execute if entity @s[tag=Hub] run function exigence:bossbar/trial/dune/update_bar_hub
