# Call if triggering for the first time without blaze powder

## CONSTRAINTS
#   AS AltarNode

#========================================================================================================

# Set block to fire
execute at @s run setblock ~ ~-1 ~ minecraft:netherrack
execute at @s run setblock ~ ~ ~ minecraft:fire

# Playsound
execute at @s run playsound minecraft:item.flintandsteel.use neutral @a ~ ~ ~

# Set game.node.node_state to 1
scoreboard players set @s game.node.node_state 1

# If game is inactive, return here
execute if score @s ObjectLevel matches 10 run function exigence:tutorial/flow/step
execute if score @s ObjectLevel matches 10 run return 1
execute unless data storage exigence:dungeon {is_active:1} run return 1
#========================================================================================================

# Give player score
scoreboard players add @p[tag=Lighting] profile.data.altar.cr.altars_lit 1

# Reduce menace by 1
function exigence:menace/try_reduce_menace

# Increase aqua by 1
execute as @p[tag=Lighting] run function exigence:resources/try_generate {green:0,red:0,aqua:1}

# Give tracker score
scoreboard players add @s node.data.altar.times_lit 1

# Try give spark
execute as @p[tag=Lighting] run function exigence:altar/puzzle/give_spark

# Call concordance
execute as @a[tag=ActivePlayer,tag=Lighting] run function exigence:cards/concordance/private/trigger
