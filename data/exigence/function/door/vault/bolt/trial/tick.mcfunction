# Main "game loop" of the trial

## CONSTRAINTS
#   AS/AT trial node, bolt

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 5.. run say (D5 Trial) Bolt trial tick

## TRIAL STATE
# If player not found within the bound, loss
#   Prevents using an enderpearl to counter-tp, or otherwise cheat by escaping the room
#   Also detects if player logs out
execute positioned ~-7 ~-3 ~-7 unless entity @a[dx=13,dy=17,dz=13,scores={dead=0,game.player.vault_code=1}] run return run function exigence:door/vault/bolt/trial/loss/player_not_found
#----------------------------------------------------------------------------------------------------

# Detect loss
execute as @a[scores={dead=0,game.player.vault_code=1},distance=..24] at @s if block ~ ~-1 ~ minecraft:barrier run return run function exigence:door/vault/bolt/trial/loss/barrier
execute as @a[scores={dead=0,game.player.vault_code=1},distance=..24] if predicate exigence:player/on_fire run return run function exigence:door/vault/bolt/trial/loss/fire
#----------------------------------------------------------------------------------------------------

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score @s trial.timer matches 660.. as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run return run function exigence:door/vault/bolt/trial/win
#----------------------------------------------------------------------------------------------------

#====================================================================================================
# Clear previous sounds
tag @a remove TrialSounds_Bolt
# Tag players for receiving sound
execute positioned ~-7 ~-3 ~-7 run tag @a[dx=13,dy=17,dz=13] add TrialSounds_Bolt
# If game, also tag co-op watchers
execute if entity @s[tag=Game] positioned -403.5 152.0 -17.5 run tag @a[distance=..3] add TrialSounds_Bolt
# Update bossbar
execute if entity @s[tag=Game] run bossbar set exigence:trial_bolt players @a[tag=TrialSounds_Bolt]
execute if entity @s[tag=Hub] run bossbar set exigence:hub_trial_bolt players @a[tag=TrialSounds_Bolt]

# Pre-trial time titles
execute if score @s trial.timer matches 0 as @a[tag=TrialSounds_Bolt] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 20 as @a[tag=TrialSounds_Bolt] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 40 as @a[tag=TrialSounds_Bolt] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 60 as @a[tag=TrialSounds_Bolt] run title @s subtitle {text:"Avoid the blue lines",color:"yellow"}
execute if score @s trial.timer matches 60 as @a[tag=TrialSounds_Bolt] run title @s title ""
execute if score @s trial.timer matches 80 as @a[tag=TrialSounds_Bolt] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score @s trial.timer matches 600 as @a[tag=TrialSounds_Bolt] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 620 as @a[tag=TrialSounds_Bolt] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 640 as @a[tag=TrialSounds_Bolt] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 659 as @a[tag=TrialSounds_Bolt] run function exigence:door/vault/_trial/titles/blank



#====================================================================================================
## TRIAL FUNCTIONALITY

# Pizzas update
#   Reduce scores
scoreboard players remove @e[type=minecraft:marker,tag=PizzaLightning,distance=..24] trial.object.timer 1
#   If at least one are triggering, sound
execute if entity @e[type=minecraft:marker,scores={trial.object.timer=0},tag=PizzaLightning,distance=..24] run playsound minecraft:entity.breeze.jump ambient @a[tag=TrialSounds_Bolt] ~ ~1000 ~ 1000 1

scoreboard players set #hit_player Temp 0
#   If 0, trigger lightning then kill
#   OUPUTS: #hit_player Temp
execute as @e[type=minecraft:marker,scores={trial.object.timer=0},tag=PizzaLightning,distance=..24] at @s run function exigence:door/vault/bolt/trial/pizza/lightning/trigger
#   If 20, interpolate
execute as @e[type=minecraft:marker,scores={trial.object.timer=19},tag=PizzaLightning,distance=..24] at @s run function exigence:door/vault/bolt/trial/pizza/lightning/start_interpolate

# If player was hit, end trial now
execute if score #hit_player Temp matches 1 as @a[scores={dead=0,game.player.vault_code=1},distance=..24] run return run function exigence:door/vault/bolt/trial/loss/lightning
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
