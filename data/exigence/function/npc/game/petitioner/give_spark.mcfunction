# Player provides proof to Petitioner

## CONSTRAINST
#   AS player

#==============================================================================================================

execute as @e[type=villager,name=Petitioner] run say Persuasive... bring me more.

# Clear sparks (store amount)
execute store result score temp Temp run clear @s glow_ink_sac

# Add amount to candles
scoreboard players operation @a[tag=ActivePlayer] PuzzleCandles += temp Temp

# Update candles
function exigence:altar/puzzle/update_candles

# Playsound
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a ~ ~1000 ~ 1000 1

# If 50.. are now lit, puzzle complete
execute if score @a[tag=ActivePlayer,tag=PrimaryPlayer,limit=1] PuzzleCandles >= 50 number run advancement grant @a[tag=ActivePlayer,advancements={exigence:story/light_altars=false}] only exigence:story/light_altars
execute if score @a[tag=ActivePlayer,tag=PrimaryPlayer,limit=1] PuzzleCandles >= 50 number run scoreboard players set Petitioner DialogueGame 2
