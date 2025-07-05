# Main "game loop" of the trial

#==================================================================================================

# DEBUG
#execute unless entity @a[tag=ActivePlayer] run say No active player


## GAMESTATE
# Detect loss
#   If player is stepping on barrier, loss
execute as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] at @s if block ~ ~-1 ~ minecraft:barrier run function exigence:door/vault/dune/trial/loss
execute as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] if predicate exigence:player/on_fire run function exigence:door/vault/dune/trial/loss

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score Dune TrialTimer matches 660.. as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run function exigence:door/vault/dune/trial/win


# If player died somehow, loss
execute as @a[tag=ActivePlayer,scores={dead=1,VaultCode=2}] run function exigence:door/vault/dune/trial/loss

# If no players with vault code = 1, return.
#   (Loss function removes this code, so if player just lost the function will return immediately after)
execute unless entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run return 1



# Pre-trial time titles
execute if score Dune TrialTimer matches 0 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run function exigence:door/vault/_trial/titles/3
execute if score Dune TrialTimer matches 20 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run function exigence:door/vault/_trial/titles/2
execute if score Dune TrialTimer matches 40 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run function exigence:door/vault/_trial/titles/1
execute if score Dune TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run title @s subtitle {text:"Avoid the skulls",color:"aqua"}
execute if score Dune TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run title @s title ""
execute if score Dune TrialTimer matches 80 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score Dune TrialTimer matches 600 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run function exigence:door/vault/_trial/titles/3
execute if score Dune TrialTimer matches 620 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run function exigence:door/vault/_trial/titles/2
execute if score Dune TrialTimer matches 640 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run function exigence:door/vault/_trial/titles/1
execute if score Dune TrialTimer matches 659 as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] run function exigence:door/vault/_trial/titles/blank



#==============================================================================================================
## TRIAL FUNCTIONALITY

# Reduce SkullTimer
scoreboard players remove @e[type=item_display,tag=DuneSkull,scores={SkullTimer=1..}] SkullTimer 1

# Move skulls
execute as @e[type=item_display,tag=DuneSkull,tag=White,scores={SkullTimer=0}] run function exigence:door/vault/dune/trial/skull/white/move
execute as @e[type=item_display,tag=DuneSkull,tag=Black,scores={SkullTimer=0}] run function exigence:door/vault/dune/trial/skull/black/move

# Reduce skull trial timer
scoreboard players remove Skulls TrialTimer 1

# Proc new skulls
execute if score Skulls TrialTimer matches ..0 unless score Dune TrialTimer matches 630.. run function exigence:door/vault/dune/trial/skull/proc_skulls

# PLay sound if player is within 2 blocks of any skills
execute at @e[type=item_display,tag=DuneSkull,tag=White] positioned ~ ~-1 ~ as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2},distance=..2] run playsound minecraft:entity.skeleton.step hostile @s ~ ~ ~ 0.5 1.3
execute at @e[type=item_display,tag=DuneSkull,tag=Black] positioned ~ ~-1 ~ as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2},distance=..2] run playsound minecraft:entity.wither_skeleton.step hostile @s ~ ~ ~ 0.5 1.3

# Check if player is near any skulls. If yes, game loss
#   If near feet, middle, or head
execute as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] at @s anchored feet positioned ~ ~0.0 ~ if entity @e[distance=..1,type=minecraft:item_display,tag=DuneSkull] run function exigence:door/vault/dune/trial/loss
execute as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] at @s anchored feet positioned ~ ~0.9 ~ if entity @e[distance=..1,type=minecraft:item_display,tag=DuneSkull] run function exigence:door/vault/dune/trial/loss
execute as @a[tag=ActivePlayer,scores={dead=0,VaultCode=2}] at @s anchored feet positioned ~ ~1.8 ~ if entity @e[distance=..1,type=minecraft:item_display,tag=DuneSkull] run function exigence:door/vault/dune/trial/loss


#==============================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add Dune TrialTimer 1

# Update bossbar
function exigence:bossbar/trial/dune/update_bar

# Iterate
schedule function exigence:door/vault/dune/trial/tick 1t append
