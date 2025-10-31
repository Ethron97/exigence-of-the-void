# Main "game loop" of the trial

#==================================================================================================

# DEBUG
#execute unless entity @a[tag=ActivePlayer] run say No active player


## GAMESTATE
# Detect loss
#   If player is stepping on barrier, loss
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] at @s if block ~ ~-1 ~ minecraft:barrier run function exigence:door/vault/spire/trial/loss
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] if predicate exigence:player/on_fire run function exigence:door/vault/spire/trial/loss

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score Spire TrialTimer matches 660.. as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run function exigence:door/vault/spire/trial/win

# If player died somehow, loss
execute as @a[tag=ActivePlayer,scores={dead=1,game.player.vault_code=5}] run function exigence:door/vault/spire/trial/loss

# If no players with vault code = 1, return.
#   (Loss function removes this code, so if player just lost the function will return immediately after)
execute unless entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run return 1

execute if score Spire TrialTimer matches 1 run function exigence:door/vault/spire/trial/proc/proc_next
execute if score Spire TrialTimer matches 2 run function exigence:door/vault/spire/trial/proc/proc_next
execute if score Spire TrialTimer matches 3 run function exigence:door/vault/spire/trial/proc/proc_next

# Clear center platform
execute if score Spire TrialTimer matches 60 run data modify entity @e[type=block_display,tag=SpireWarning,limit=1] Glowing set value false
execute if score Spire TrialTimer matches 65 run data modify entity @e[type=block_display,tag=SpireWarning,limit=1] Glowing set value true
execute if score Spire TrialTimer matches 70 run data modify entity @e[type=block_display,tag=SpireWarning,limit=1] Glowing set value false
execute if score Spire TrialTimer matches 75 run data modify entity @e[type=block_display,tag=SpireWarning,limit=1] Glowing set value true
execute if score Spire TrialTimer matches 80 run data modify entity @e[type=block_display,tag=SpireWarning,limit=1] Glowing set value false
execute if score Spire TrialTimer matches 85 run data modify entity @e[type=block_display,tag=SpireWarning,limit=1] Glowing set value true
execute if score Spire TrialTimer matches 90 run data modify entity @e[type=block_display,tag=SpireWarning,limit=1] Glowing set value false
execute if score Spire TrialTimer matches 95 run data modify entity @e[type=block_display,tag=SpireWarning,limit=1] Glowing set value true
execute if score Spire TrialTimer matches 100 run fill -355 155 -9 -357 155 -11 air
execute if score Spire TrialTimer matches 100 run kill @e[type=block_display,tag=SpireWarning]

# Pre-trial time titles
execute if score Spire TrialTimer matches 0 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run function exigence:door/vault/_trial/titles/3
execute if score Spire TrialTimer matches 20 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run function exigence:door/vault/_trial/titles/2
execute if score Spire TrialTimer matches 40 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run function exigence:door/vault/_trial/titles/1
execute if score Spire TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run title @s subtitle {text:"Don't fall",color:"aqua"}
execute if score Spire TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run title @s title ""
execute if score Spire TrialTimer matches 80 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score Spire TrialTimer matches 600 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run function exigence:door/vault/_trial/titles/3
execute if score Spire TrialTimer matches 620 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run function exigence:door/vault/_trial/titles/2
execute if score Spire TrialTimer matches 640 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run function exigence:door/vault/_trial/titles/1
execute if score Spire TrialTimer matches 659 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=5}] run function exigence:door/vault/_trial/titles/blank



#==============================================================================================================
## TRIAL FUNCTIONALITY

# Reduce cooldown
scoreboard players remove Cooldown SpireTimer 1

# If cooldown is multiple of Partition, play beat
scoreboard players operation beat SpireTimer = Cooldown SpireTimer
scoreboard players operation beat SpireTimer %= Partition SpireTimer
execute if score beat SpireTimer matches 0 unless score Cooldown SpireTimer matches 0 run playsound minecraft:block.note_block.basedrum ambient @a[scores={game.player.vault_code=5}] ~ ~1000 ~ 1000 1

# When cooldown 0, proc next and reset score
execute if score Cooldown SpireTimer matches 0 run playsound minecraft:block.note_block.didgeridoo ambient @a[scores={game.player.vault_code=5}] ~ ~1000 ~ 1000 1
execute if score Cooldown SpireTimer matches 0 run function exigence:door/vault/spire/trial/proc/proc_next
execute if score Cooldown SpireTimer matches 0 run function exigence:door/vault/spire/trial/proc/reset_cooldown

#==============================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add Spire TrialTimer 1

# Update bossbar
function exigence:bossbar/trial/spire/update_bar

# Iterate
schedule function exigence:door/vault/spire/trial/tick 1t append
