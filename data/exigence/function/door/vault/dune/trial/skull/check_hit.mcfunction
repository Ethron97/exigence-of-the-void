# Check if this player is near a hitable skull

## CONSTRAINTS
#   AT player

## OUTPUT
#   SCORE #hit_player Temp

#====================================================================================================

# Check for loss
execute anchored feet positioned ~ ~0.0 ~ if entity @e[type=minecraft:item_display,scores={trial.object.timer=0},tag=DuneSkull,distance=..0.7] run return run scoreboard players set #hit_player Temp 1
execute anchored feet positioned ~ ~0.9 ~ if entity @e[type=minecraft:item_display,scores={trial.object.timer=0},tag=DuneSkull,distance=..0.7] run return run scoreboard players set #hit_player Temp 1
execute anchored feet positioned ~ ~1.8 ~ if entity @e[type=minecraft:item_display,scores={trial.object.timer=0},tag=DuneSkull,distance=..0.7] run return run scoreboard players set #hit_player Temp 1

# Tickle if skulls within 2 blocks
execute anchored feet positioned ~ ~1.0 ~ at @e[type=minecraft:item_display,tag=DuneSkull,tag=White,distance=..2] positioned ~ ~ ~ run playsound minecraft:entity.skeleton.step hostile @a[tag=TrialSounds_Dune] ~ ~ ~ 0.5 1.3
execute anchored feet positioned ~ ~1.0 ~ at @e[type=minecraft:item_display,tag=DuneSkull,tag=Black,distance=..2] positioned ~ ~ ~ run playsound minecraft:entity.wither_skeleton.step hostile @a[tag=TrialSounds_Dune] ~ ~ ~ 0.5 1.3
