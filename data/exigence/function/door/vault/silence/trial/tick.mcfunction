# Main "game loop" of the trial

#==================================================================================================

# DEBUG
#execute unless entity @a[tag=ActivePlayer] run say No active player


## GAMESTATE
# Detect loss
#   If player is stepping on barrier, loss
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] at @s if block ~ ~-1 ~ minecraft:barrier run function exigence:door/vault/silence/trial/loss
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] if predicate exigence:player/on_fire run function exigence:door/vault/silence/trial/loss

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score Silence TrialTimer matches 660.. as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run function exigence:door/vault/silence/trial/win

# If player died somehow, loss
execute as @a[tag=ActivePlayer,scores={dead=1,game.player.vault_code=3}] run function exigence:door/vault/silence/trial/loss

# If no players with vault code = 1, return.
#   (Loss function removes this code, so if player just lost the function will return immediately after)
execute unless entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run return 1



# Pre-trial time titles
execute if score Silence TrialTimer matches 0 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run function exigence:door/vault/_trial/titles/3
execute if score Silence TrialTimer matches 20 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run function exigence:door/vault/_trial/titles/2
execute if score Silence TrialTimer matches 40 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run function exigence:door/vault/_trial/titles/1
execute if score Silence TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run title @s subtitle {text:"Don't fall",color:"aqua"}
execute if score Silence TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run title @s title ""
execute if score Silence TrialTimer matches 80 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score Silence TrialTimer matches 600 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run function exigence:door/vault/_trial/titles/3
execute if score Silence TrialTimer matches 620 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run function exigence:door/vault/_trial/titles/2
execute if score Silence TrialTimer matches 640 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run function exigence:door/vault/_trial/titles/1
execute if score Silence TrialTimer matches 659 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=3}] run function exigence:door/vault/_trial/titles/blank



#==============================================================================================================
## TRIAL FUNCTIONALITY

scoreboard players remove SilencePlatform TrialTimer 1

execute if score SilencePlatform TrialTimer matches ..0 as @e[type=marker,tag=SilencePlatform] at @s run function exigence:door/vault/silence/trial/platform/step

#==============================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add Silence TrialTimer 1

# Update bossbar
function exigence:bossbar/trial/silence/update_bar

# Iterate
schedule function exigence:door/vault/silence/trial/tick 1t append
