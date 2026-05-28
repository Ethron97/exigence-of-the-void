# Main "game loop" of the trial

## CONSTRAINTS
#   AS/AT trial node, eye

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 5.. run say (D5 Trial) Eye trial tick

## TRIAL STATE
# If player not found within the bound, loss
#   Prevents using an enderpearl to counter-tp, or otherwise cheat by escaping the room
#   Also detects if player logs out
execute positioned ~-7 ~-3 ~-7 unless entity @a[dx=13,dy=17,dz=13,scores={dead=0,game.player.vault_code=4}] run return run function exigence:door/vault/eye/trial/loss/player_not_found
#----------------------------------------------------------------------------------------------------

# Detect loss
execute as @a[scores={dead=0,game.player.vault_code=4},distance=..24] at @s if block ~ ~-1 ~ minecraft:barrier run return run function exigence:door/vault/eye/trial/loss/barrier
execute as @a[scores={dead=0,game.player.vault_code=4},distance=..24] if predicate exigence:player/on_fire run return run function exigence:door/vault/eye/trial/loss/fire
#----------------------------------------------------------------------------------------------------

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score @s trial.timer matches 660.. as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run return run function exigence:door/vault/eye/trial/win
#----------------------------------------------------------------------------------------------------

#====================================================================================================
# Clear previous sounds
tag @a remove TrialSounds_Eye
# Tag players for receiving sound
execute positioned ~-7 ~-3 ~-7 run tag @a[dx=13,dy=17,dz=13] add TrialSounds_Eye
# If game, also tag co-op watchers
execute if entity @s[tag=Game] positioned -366.5 152.0 6.5 run tag @a[distance=..3] add TrialSounds_Eye
# Update bossbar
execute if entity @s[tag=Game] run bossbar set exigence:trial_eye players @a[tag=TrialSounds_Eye]
execute if entity @s[tag=Hub] run bossbar set exigence:hub_trial_eye players @a[tag=TrialSounds_Eye]

# Pre-trial time titles
execute if score @s trial.timer matches 0 as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 20 as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 40 as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run title @s subtitle {text:"Avoid the monters",color:"yellow"}
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run title @s title ""
execute if score @s trial.timer matches 80 as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score @s trial.timer matches 600 as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 620 as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 640 as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 659 as @a[scores={dead=0,game.player.vault_code=4},distance=..24] run function exigence:door/vault/_trial/titles/blank



#====================================================================================================
## TRIAL FUNCTIONALITY

# Move monsters (after countdown)
scoreboard players remove @e[type=#exigence:eye_trial,scores={trial.object.timer=1..},tag=Monster,distance=..24] trial.object.timer 1
execute as @e[type=#exigence:eye_trial,scores={trial.object.timer=0},tag=Monster,distance=..24] run function exigence:door/vault/eye/trial/monster/move

# Check for loss
execute as @a[scores={dead=0,game.player.vault_code=4},distance=..24] at @s positioned ~-0.5 ~0.0 ~-0.5 if entity @e[dx=0,dy=0,dz=0,type=#exigence:eye_trial,tag=Monster] run function exigence:door/vault/eye/trial/loss/monster

# New waves:
# Silverfish 2/4
execute if score @s trial.timer matches 200 at @e[type=#exigence:eye_trial,scores={trial.object.timer=0},tag=Monster,distance=..24,sort=random,limit=2] run function exigence:door/vault/eye/trial/monster/new {Type:'silverfish',Rotation:[180.0f,0.0f],Speed:2,Direction:3}
execute if entity @s[tag=Crucible] if score @s trial.timer matches 140 at @e[type=#exigence:eye_trial,scores={trial.object.timer=0},tag=Monster,distance=..24,sort=random,limit=2] run function exigence:door/vault/eye/trial/monster/new {Type:'silverfish',Rotation:[180.0f,0.0f],Speed:2,Direction:3}

# Zombies
execute if score @s trial.timer matches 300 at @e[type=#exigence:eye_trial,scores={trial.object.timer=0},tag=Monster,distance=..24,sort=random,limit=2] run function exigence:door/vault/eye/trial/monster/new {Type:'husk',Rotation:[180.0f,0.0f],Speed:1,Direction:3}

# Endermite 1/2
execute if score @s trial.timer matches 400 at @e[type=#exigence:eye_trial,scores={trial.object.timer=0},tag=Monster,sort=random,limit=1] run function exigence:door/vault/eye/trial/monster/new {Type:'endermite',Rotation:[180.0f,0.0f],Speed:4,Direction:3}
#execute if entity @s[tag=Crucible] if score @s trial.timer matches 520 at @e[type=#exigence:eye_trial,tag=Monster,sort=random,limit=1,scores={trial.object.timer=0}] run function exigence:door/vault/eye/trial/monster/new {Type:'endermite',Rotation:[180.0f,0.0f],Speed:4,Direction:3}

# Get rid of stonebrick in the middle
execute if score @s trial.timer matches 0 positioned ~ ~-1 ~ run function exigence:door/vault/eye/trial/drop_block/new_drop_block
execute if score @s trial.timer matches 60 run setblock ~ ~-1 ~ air
execute if score @s trial.timer matches 60 run kill @n[type=minecraft:block_display,tag=DropBlock,distance=..2]

#====================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add @s trial.timer 1

# Update bossbar
execute if entity @s[tag=Game] run function exigence:bossbar/trial/eye/update_bar
execute if entity @s[tag=Hub] run function exigence:bossbar/trial/eye/update_bar_hub
