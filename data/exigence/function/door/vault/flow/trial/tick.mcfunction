# Main "game loop" of the trial

## CONSTRAINTS
#   AS/AT trial node, flow

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 5.. run say (D5 Trial) Flow trial tick

## TRIAL STATE
# If player not found within the bound, loss
#   Prevents using an enderpearl to counter-tp, or otherwise cheat by escaping the room
#   Also detects if player logs out
execute positioned ~-7 ~-3 ~-7 unless entity @a[dx=13,dy=17,dz=13,scores={dead=0,game.player.vault_code=6}] run return run function exigence:door/vault/flow/trial/loss/player_not_found
#----------------------------------------------------------------------------------------------------

# Detect loss
execute as @a[scores={dead=0,game.player.vault_code=6},distance=..24] at @s if block ~ ~-1 ~ minecraft:barrier run return run function exigence:door/vault/flow/trial/loss/barrier
execute as @a[scores={dead=0,game.player.vault_code=6},distance=..24] if predicate exigence:player/on_fire run return run function exigence:door/vault/flow/trial/loss/fire
#----------------------------------------------------------------------------------------------------

# Detect win
#   If player survives 30 seconds, win. (600 ticks + 60 for pre-trial time)
execute if score @s trial.timer matches 660.. as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run return run function exigence:door/vault/flow/trial/win
#----------------------------------------------------------------------------------------------------

#====================================================================================================
# Clear previous sounds
tag @a remove TrialSounds_Flow
# Tag players for receiving sound
execute positioned ~-7 ~-3 ~-7 run tag @a[dx=13,dy=17,dz=13] add TrialSounds_Flow
# If game, also tag co-op watchers
execute if entity @s[tag=Game] positioned -366.5 152.0 -25.5 run tag @a[distance=..3] add TrialSounds_Flow
# Update bossbar
execute if entity @s[tag=Game] run bossbar set exigence:trial_flow players @a[tag=TrialSounds_Flow]
execute if entity @s[tag=Hub] run bossbar set exigence:hub_trial_flow players @a[tag=TrialSounds_Flow]

# Pre-trial time titles
execute if score @s trial.timer matches 0 as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 20 as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 40 as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run title @s subtitle {text:"Jump over the waves",color:"yellow"}
execute if score @s trial.timer matches 60 as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run title @s title ""
execute if score @s trial.timer matches 80 as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run function exigence:door/vault/_trial/titles/blank

# Almost there!
execute if score @s trial.timer matches 600 as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run function exigence:door/vault/_trial/titles/3
execute if score @s trial.timer matches 620 as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run function exigence:door/vault/_trial/titles/2
execute if score @s trial.timer matches 640 as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run function exigence:door/vault/_trial/titles/1
execute if score @s trial.timer matches 659 as @a[scores={dead=0,game.player.vault_code=6},distance=..24] run function exigence:door/vault/_trial/titles/blank



#====================================================================================================
## TRIAL FUNCTIONALITY

# New patterns at fixed points depending on difficulty:
execute if score @s trial.timer matches 60 run function exigence:door/vault/flow/trial/pattern/new_pattern

execute unless entity @s[tag=Crucible] if score @s trial.timer matches 200 run function exigence:door/vault/flow/trial/pattern/new_pattern
execute unless entity @s[tag=Crucible] if score @s trial.timer matches 400 run function exigence:door/vault/flow/trial/pattern/new_pattern

execute if entity @s[tag=Crucible] if score @s trial.timer matches 150 run function exigence:door/vault/flow/trial/pattern/new_pattern
execute if entity @s[tag=Crucible] if score @s trial.timer matches 300 run function exigence:door/vault/flow/trial/pattern/new_pattern
execute if entity @s[tag=Crucible] if score @s trial.timer matches 450 run function exigence:door/vault/flow/trial/pattern/new_pattern
#execute if entity @s[tag=Crucible] if score @s trial.timer matches 420 run function exigence:door/vault/flow/trial/pattern/new_pattern


# Reduce pattern timer
scoreboard players remove @e[type=minecraft:marker,scores={trial.object.timer=1..},tag=Pattern] trial.object.timer 1
execute as @e[type=minecraft:marker,scores={trial.object.timer=0},tag=Pattern,tag=Wave] at @s run function exigence:door/vault/flow/trial/pattern/wave/ripple/new_ripple with entity @s


# Advance ripples
execute as @e[type=minecraft:block_display,tag=Ripple,distance=..24] at @s run function exigence:door/vault/flow/trial/pattern/wave/ripple/move


# Kill ripple if it is in a block
execute as @e[type=minecraft:block_display,tag=Ripple,distance=..24] at @s unless block ~ ~ ~ air run kill @s[type=minecraft:block_display,tag=Ripple]


scoreboard players set #hit_player Temp 0
# If player is on ground, check for loss ripple collision
#   OUTPUTS: #hit_player Temp
execute if entity @a[scores={game.player.vault_code=6},distance=..24,predicate=exigence:player/is_on_ground] as @e[type=minecraft:block_display,tag=Ripple,distance=..24] at @s run function exigence:door/vault/flow/trial/pattern/wave/ripple/trigger

# If player was hit, end trial now
execute if score #hit_player Temp matches 1 as @a[scores={game.player.vault_code=6},distance=..24] run return run function exigence:door/vault/flow/trial/loss/wave
#----------------------------------------------------------------------------------------------------


#====================================================================================================
## Tick cleanup

# Countup trial clock
scoreboard players add @s trial.timer 1

# Update bossbar
execute if entity @s[tag=Game] run function exigence:bossbar/trial/flow/update_bar
execute if entity @s[tag=Hub] run function exigence:bossbar/trial/flow/update_bar_hub
