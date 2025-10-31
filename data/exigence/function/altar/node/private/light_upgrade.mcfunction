# Call if triggering for the second time with ember / spark

## CONSTRAINTS
#   AS AltarNode

#========================================================================================================

# Set block to (soul) fire
execute at @s run setblock ~ ~-1 ~ minecraft:soul_soil
execute at @s run setblock ~ ~ ~ minecraft:soul_fire

# Playsound
execute at @s run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.3

# Remove interaction, if already red'd
execute if score InnerFire Modifiers matches 1 if entity @s[tag=Red] run function exigence:altar/node/remove_interaction
execute if score InnerFire Modifiers matches 0 run function exigence:altar/node/remove_interaction

# Set game.node.node_state to 2
scoreboard players set @s game.node.node_state 2

# If game is inactive, return here
execute if score @s ObjectLevel matches 10 in exigence:tutorial run function exigence:tutorial/flow/step
execute if score @s ObjectLevel matches 10 run return 1
execute unless data storage exigence:dungeon {is_active:1} run return 1
#========================================================================================================

# Give player score
scoreboard players add @p[tag=Lighting] profile.data.altar.cr.altars_upgraded 1

# Reduce menace by 1
function exigence:menace/try_reduce_menace

# Increase aqua by 1
execute as @p[tag=Lighting] run function exigence:resources/try_generate {green:0,red:0,aqua:1}

# Give tracker score
scoreboard players add @s node.data.altar.times_upgraded 1

# Try give spark
execute as @p[tag=Lighting] run function exigence:altar/puzzle/give_spark

# Check concordance
execute as @a[tag=ActivePlayer,tag=Lighting] run function exigence:cards/concordance/private/trigger
