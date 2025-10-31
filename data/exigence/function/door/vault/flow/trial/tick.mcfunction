# Main "game loop" of the trial

#==================================================================================================

# DEBUG
#execute unless entity @a[tag=ActivePlayer] run say No active player


## GAMESTATE
# Detect loss
#   If player is stepping on barrier, loss
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] at @s if block ~ ~-1 ~ minecraft:barrier run function exigence:door/vault/flow/trial/loss
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] if predicate exigence:player/on_fire run function exigence:door/vault/flow/trial/loss

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score Flow TrialTimer matches 660.. as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run function exigence:door/vault/flow/trial/win

# If player died somehow, loss
execute as @a[tag=ActivePlayer,scores={dead=1,game.player.vault_code=6}] run function exigence:door/vault/flow/trial/loss

# If no players with vault code = 1, return.
#   (Loss function removes this code, so if player just lost the function will return immediately after)
execute unless entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run return 1



# Pre-trial time titles
execute if score Flow TrialTimer matches 0 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run function exigence:door/vault/_trial/titles/3
execute if score Flow TrialTimer matches 20 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run function exigence:door/vault/_trial/titles/2
execute if score Flow TrialTimer matches 40 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run function exigence:door/vault/_trial/titles/1
execute if score Flow TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run title @s subtitle {text:"Jump over the waves",color:"aqua"}
execute if score Flow TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run title @s title ""
execute if score Flow TrialTimer matches 80 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score Flow TrialTimer matches 600 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run function exigence:door/vault/_trial/titles/3
execute if score Flow TrialTimer matches 620 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run function exigence:door/vault/_trial/titles/2
execute if score Flow TrialTimer matches 640 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run function exigence:door/vault/_trial/titles/1
execute if score Flow TrialTimer matches 659 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] run function exigence:door/vault/_trial/titles/blank



#==============================================================================================================
## TRIAL FUNCTIONALITY

# Every 10 seconds add new pattern
execute if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6}] if score Flow TrialTimer matches 60 run function exigence:door/vault/flow/trial/pattern/new_pattern
execute if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6},tag=Trial] if score Flow TrialTimer matches 200 run function exigence:door/vault/flow/trial/pattern/new_pattern
execute if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6},tag=Trial] if score Flow TrialTimer matches 400 run function exigence:door/vault/flow/trial/pattern/new_pattern

execute if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6},tag=Crucible] if score Flow TrialTimer matches 150 run function exigence:door/vault/flow/trial/pattern/new_pattern
execute if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6},tag=Crucible] if score Flow TrialTimer matches 300 run function exigence:door/vault/flow/trial/pattern/new_pattern
execute if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6},tag=Crucible] if score Flow TrialTimer matches 450 run function exigence:door/vault/flow/trial/pattern/new_pattern
#execute if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=6},tag=Crucible] if score Flow TrialTimer matches 420 run function exigence:door/vault/flow/trial/pattern/new_pattern

# Reduce pattern timer
scoreboard players remove @e[type=marker,tag=Pattern,scores={PatternTimer=1..}] PatternTimer 1
execute as @e[type=marker,tag=Pattern,tag=Wave,scores={PatternTimer=0}] at @s run function exigence:door/vault/flow/trial/pattern/wave/ripple/new_ripple with entity @s

# Advance ripples
execute as @e[type=minecraft:block_display,tag=Ripple,scores={PatternSpeed=1}] at @s run tp @s ^ ^ ^0.04
execute as @e[type=minecraft:block_display,tag=Ripple,scores={PatternSpeed=2}] at @s run tp @s ^ ^ ^0.06
execute as @e[type=minecraft:block_display,tag=Ripple,scores={PatternSpeed=3}] at @s run tp @s ^ ^ ^0.08
execute as @e[type=minecraft:block_display,tag=Ripple,scores={PatternSpeed=4}] at @s run tp @s ^ ^ ^0.1
execute as @e[type=minecraft:block_display,tag=Ripple,scores={PatternSpeed=5}] at @s run tp @s ^ ^ ^0.1

# Kill ripple if it is in a block
execute as @e[type=minecraft:block_display,tag=Ripple] at @s unless block ~ ~ ~ air run kill @s[type=block_display,tag=Ripple]

# If player is on ground, check for loss
execute if entity @a[tag=ActivePlayer,scores={game.player.vault_code=6},nbt={OnGround:1b}] as @e[type=minecraft:block_display,tag=Ripple] at @s run function exigence:door/vault/flow/trial/pattern/wave/ripple/trigger



#==============================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add Flow TrialTimer 1

# Update bossbar
function exigence:bossbar/trial/flow/update_bar

# Iterate
schedule function exigence:door/vault/flow/trial/tick 1t append
