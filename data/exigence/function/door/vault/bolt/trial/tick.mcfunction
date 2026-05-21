# Main "game loop" of the trial

## CONSTRAINTS
#   AS/AT trial node, bolt

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 5.. run say (D5) Bolt trial tick

## GAMESTATE
# Detect loss
#   If player is stepping on barrier, loss
execute as @a[scores={dead=0,game.player.vault_code=1},distance=..24] at @s if block ~ ~-1 ~ minecraft:barrier run return run function exigence:door/vault/bolt/trial/loss
execute as @a[scores={dead=0,game.player.vault_code=1},distance=..24] if predicate exigence:player/on_fire run return run function exigence:door/vault/bolt/trial/loss
#----------------------------------------------------------------------------------------------------

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score @s trial.timer matches 660.. as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run return run function exigence:door/vault/bolt/trial/win
#----------------------------------------------------------------------------------------------------

# If player died somehow, loss
execute as @a[scores={dead=1,game.player.vault_code=1},distance=..24] run return run function exigence:door/vault/bolt/trial/loss
#----------------------------------------------------------------------------------------------------

# If no players with vault code = 1, return.
#   (Loss function removes this code, so if player just lost the function will return immediately after)
execute unless entity @a[scores={dead=0,game.player.vault_code=1},distance=..24] run return 1
#----------------------------------------------------------------------------------------------------

# Pre-trial time titles
execute if score @s trial.timer matches 0 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 20 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 40 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run title @s subtitle {text:"Avoid the blue lines",color:"aqua"}
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run title @s title ""
execute if score @s trial.timer matches 80 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score @s trial.timer matches 600 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 620 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 640 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 659 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run function exigence:door/vault/_trial/titles/blank



#====================================================================================================
## TRIAL FUNCTIONALITY

# Pizzas update
#   Reduce scores
scoreboard players remove @e[type=minecraft:marker,tag=PizzaLightning,distance=..24] trial.object.timer 1
#   If at least one are triggering, sound
execute if entity @e[type=minecraft:marker,scores={trial.object.timer=0},tag=PizzaLightning,distance=..24] run playsound minecraft:entity.breeze.jump ambient @a[scores={game.player.vault_code=1},distance=..24] ~ ~1000 ~ 1000 1

scoreboard players set #hit_player Temp 0
#   If 0, trigger lightning then kill
#   OUPUTS: #hit_player Temp
execute as @e[type=minecraft:marker,scores={trial.object.timer=0},tag=PizzaLightning,distance=..24] at @s run function exigence:door/vault/bolt/trial/pizza/lightning/trigger
#   If 20, interpolate
execute as @e[type=minecraft:marker,scores={trial.object.timer=19},tag=PizzaLightning,distance=..24] at @s run function exigence:door/vault/bolt/trial/pizza/lightning/start_interpolate

# If player was hit, end trial now
execute if score #hit_player Temp matches 1 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run return run function exigence:door/vault/bolt/trial/loss
#----------------------------------------------------------------------------------------------------

# Generate pizzas (based on Trial or Crucible)
#   Always one final pizza(s) just before end
execute if score @s trial.timer matches 630 run function exigence:door/vault/bolt/trial/proc/proc_pizzas
#   Unless game is about to end
execute if score @s trial.timer.cooldown matches ..0 unless score @s trial.timer matches 630.. run function exigence:door/vault/bolt/trial/proc/proc_pizzas

# Countdown pizza timer
scoreboard players remove @s trial.timer.cooldown 1



## Crucible
#   Drop 10 blocks out every "bracket" change
execute if score @s trial.timer matches 0 if entity @s[tag=Crucible] as @n[type=minecraft:marker,tag=BoltThrower,distance=..1] run function exigence:door/vault/bolt/trial/proc/proc_drop_blocks
execute if score @s trial.timer matches 200 if entity @s[tag=Crucible] as @n[type=minecraft:marker,tag=BoltThrower,distance=..1] run function exigence:door/vault/bolt/trial/proc/proc_drop_blocks
execute if score @s trial.timer matches 400 if entity @s[tag=Crucible] as @n[type=minecraft:marker,tag=BoltThrower,distance=..1] run function exigence:door/vault/bolt/trial/proc/proc_drop_blocks
execute if score @s trial.timer matches 520 if entity @s[tag=Crucible] as @n[type=minecraft:marker,tag=BoltThrower,distance=..1] run function exigence:door/vault/bolt/trial/proc/proc_drop_blocks

# Dropblocks update
#   Reduce scores
scoreboard players remove @e[type=minecraft:block_display,tag=DropBlock,distance=..24] trial.object.timer 1
#   If 0, remove block then kill
execute as @e[type=minecraft:block_display,scores={trial.object.timer=0},tag=DropBlock,distance=..24] at @s run function exigence:door/vault/bolt/trial/drop_block/trigger

#====================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add @s trial.timer 1

# Update bossbar
execute if entity @s[tag=Game] run function exigence:bossbar/trial/bolt/update_bar
execute if entity @s[tag=Hub] run function exigence:bossbar/trial/bolt/update_bar_hub
