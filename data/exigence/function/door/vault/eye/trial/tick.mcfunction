# Main "game loop" of the trial

#==================================================================================================

# DEBUG
#execute unless entity @a[tag=ActivePlayer] run say No active player


## GAMESTATE
# Detect loss
#   If player is stepping on barrier, loss
execute as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] at @s if block ~ ~-1 ~ minecraft:barrier run function exigence:door/vault/eye/trial/loss
execute as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] if predicate exigence:player/on_fire run function exigence:door/vault/eye/trial/loss

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score Eye TrialTimer matches 660.. as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run function exigence:door/vault/eye/trial/win

# If player died somehow, loss
execute as @a[tag=ActivePlayer,scores={dead=1,VaultCode=4}] run function exigence:door/vault/eye/trial/loss

# If no players with vault code = 1, return.
#   (Loss function removes this code, so if player just lost the function will return immediately after)
execute unless entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run return 1



# Pre-trial time titles
execute if score Eye TrialTimer matches 0 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run function exigence:door/vault/_trial/titles/3
execute if score Eye TrialTimer matches 20 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run function exigence:door/vault/_trial/titles/2
execute if score Eye TrialTimer matches 40 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run function exigence:door/vault/_trial/titles/1
execute if score Eye TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run title @s subtitle {text:"Avoid the monsters",color:"aqua"}
execute if score Eye TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run title @s title ""
execute if score Eye TrialTimer matches 80 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score Eye TrialTimer matches 600 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run function exigence:door/vault/_trial/titles/3
execute if score Eye TrialTimer matches 620 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run function exigence:door/vault/_trial/titles/2
execute if score Eye TrialTimer matches 640 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run function exigence:door/vault/_trial/titles/1
execute if score Eye TrialTimer matches 659 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] run function exigence:door/vault/_trial/titles/blank



#==============================================================================================================
## TRIAL FUNCTIONALITY

# Move monsters (after countdown)
scoreboard players remove @e[type=#exigence:eye_trial,tag=Monster,scores={TrialTimer=1..}] TrialTimer 1
execute as @e[type=#exigence:eye_trial,tag=Monster,scores={TrialTimer=0}] run function exigence:door/vault/eye/trial/monster/move

# Check for loss
execute as @a[tag=ActivePlayer,scores={dead=0,VaultCode=4}] at @s positioned ~ ~0.0 ~ if entity @e[distance=..1.2,type=#exigence:eye_trial,tag=Monster] run function exigence:door/vault/eye/trial/loss

# New waves:
# Silverfish 2/4
execute if score Eye TrialTimer matches 200 at @e[type=#exigence:eye_trial,tag=Monster,sort=random,limit=1,scores={TrialTimer=0}] run function exigence:door/vault/eye/trial/monster/new {Type:'silverfish',Rotation:[180.0f,0.0f],Speed:2,Direction:3}
execute if score Eye TrialTimer matches 200 at @e[type=#exigence:eye_trial,tag=Monster,sort=random,limit=1,scores={TrialTimer=0}] run function exigence:door/vault/eye/trial/monster/new {Type:'silverfish',Rotation:[180.0f,0.0f],Speed:2,Direction:3}
execute if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=4},tag=Crucible] if score Eye TrialTimer matches 140 at @e[type=#exigence:eye_trial,tag=Monster,sort=random,limit=1,scores={TrialTimer=0}] run function exigence:door/vault/eye/trial/monster/new {Type:'silverfish',Rotation:[180.0f,0.0f],Speed:2,Direction:3}
execute if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=4},tag=Crucible] if score Eye TrialTimer matches 140 at @e[type=#exigence:eye_trial,tag=Monster,sort=random,limit=1,scores={TrialTimer=0}] run function exigence:door/vault/eye/trial/monster/new {Type:'silverfish',Rotation:[180.0f,0.0f],Speed:2,Direction:3}

# Endermite 1/2
execute if score Eye TrialTimer matches 400 at @e[type=#exigence:eye_trial,tag=Monster,sort=random,limit=1,scores={TrialTimer=0}] run function exigence:door/vault/eye/trial/monster/new {Type:'endermite',Rotation:[180.0f,0.0f],Speed:4,Direction:3}
#execute if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=4},tag=Crucible] if score Eye TrialTimer matches 520 at @e[type=#exigence:eye_trial,tag=Monster,sort=random,limit=1,scores={TrialTimer=0}] run function exigence:door/vault/eye/trial/monster/new {Type:'endermite',Rotation:[180.0f,0.0f],Speed:4,Direction:3}

#==============================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add Eye TrialTimer 1

# Update bossbar
function exigence:bossbar/trial/eye/update_bar

# Iterate
schedule function exigence:door/vault/eye/trial/tick 1t append
