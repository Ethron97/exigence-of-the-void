# Main "game loop" of the trial

#==================================================================================================

# DEBUG
#execute unless entity @a[tag=ActivePlayer] run say No active player


## GAMESTATE
# Detect loss
#   If player is stepping on barrier, loss
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] at @s if block ~ ~-1 ~ minecraft:barrier run function exigence:door/vault/bolt/trial/loss
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] if predicate exigence:player/on_fire run function exigence:door/vault/bolt/trial/loss

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score Bolt TrialTimer matches 660.. as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run function exigence:door/vault/bolt/trial/win

# If player died somehow, loss
execute as @a[tag=ActivePlayer,scores={dead=1,game.player.vault_code=1}] run function exigence:door/vault/bolt/trial/loss

# If no players with vault code = 1, return.
#   (Loss function removes this code, so if player just lost the function will return immediately after)
execute unless entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run return 1



# Pre-trial time titles
execute if score Bolt TrialTimer matches 0 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run function exigence:door/vault/_trial/titles/3
execute if score Bolt TrialTimer matches 20 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run function exigence:door/vault/_trial/titles/2
execute if score Bolt TrialTimer matches 40 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run function exigence:door/vault/_trial/titles/1
execute if score Bolt TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run title @s subtitle {text:"Avoid the blue lines",color:"aqua"}
execute if score Bolt TrialTimer matches 60 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run title @s title ""
execute if score Bolt TrialTimer matches 80 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score Bolt TrialTimer matches 600 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run function exigence:door/vault/_trial/titles/3
execute if score Bolt TrialTimer matches 620 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run function exigence:door/vault/_trial/titles/2
execute if score Bolt TrialTimer matches 640 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run function exigence:door/vault/_trial/titles/1
execute if score Bolt TrialTimer matches 659 as @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1}] run function exigence:door/vault/_trial/titles/blank



#==============================================================================================================
## TRIAL FUNCTIONALITY

# Pizzas update
#   Reduce scores
scoreboard players remove @e[type=minecraft:marker,tag=PizzaLightning] PizzaTimer 1
#   If at least one are triggering, sound
execute if entity @e[type=minecraft:marker,tag=PizzaLightning,scores={PizzaTimer=0}] run playsound minecraft:entity.breeze.jump ambient @a[scores={game.player.vault_code=1}] ~ ~1000 ~ 1000 1

#   If 0, trigger lightning then kill
execute as @e[type=minecraft:marker,tag=PizzaLightning,scores={PizzaTimer=0}] at @s run function exigence:door/vault/bolt/trial/pizza/lightning/trigger
#   If 20, interpolate
execute as @e[type=minecraft:marker,tag=PizzaLightning,scores={PizzaTimer=19}] at @s run function exigence:door/vault/bolt/trial/pizza/lightning/start_interpolate

# Generate pizzas (based on Trial or Crucible)
#   Always one final pizzas just before end
execute if score Bolt TrialTimer matches 630 run function exigence:door/vault/bolt/trial/proc/proc_pizzas
#   Unless game is about to end
execute if score Pizza TrialTimer matches ..0 unless score Bolt TrialTimer matches 630.. run function exigence:door/vault/bolt/trial/proc/proc_pizzas

# Countdown pizza timer
scoreboard players remove Pizza TrialTimer 1



## Crucible
#   Drop 10 blocks out every "bracket" change
execute if score Bolt TrialTimer matches 0 if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1},tag=Crucible] run function exigence:door/vault/bolt/trial/proc/proc_drop_blocks
execute if score Bolt TrialTimer matches 200 if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1},tag=Crucible] run function exigence:door/vault/bolt/trial/proc/proc_drop_blocks
execute if score Bolt TrialTimer matches 400 if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1},tag=Crucible] run function exigence:door/vault/bolt/trial/proc/proc_drop_blocks
execute if score Bolt TrialTimer matches 520 if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=1},tag=Crucible] run function exigence:door/vault/bolt/trial/proc/proc_drop_blocks

# Dropblocks update
#   Reduce scores
scoreboard players remove @e[type=minecraft:block_display,tag=DropBlock] DropBlockTimer 1
#   If 0, remove block then kill
execute as @e[type=minecraft:block_display,tag=DropBlock,scores={DropBlockTimer=0}] at @s run function exigence:door/vault/bolt/trial/drop_block/trigger

#==============================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add Bolt TrialTimer 1

# Update bossbar
function exigence:bossbar/trial/bolt/update_bar

# Iterate
schedule function exigence:door/vault/bolt/trial/tick 1t append
