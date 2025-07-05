# Call if triggering for the second or third time with blood (inner fire)

## CONSTRAINTS
#   AS AltarNode

#========================================================================================================

# Add tag
tag @s add Red

# Set altar to Red Netherrack
execute at @s run clone -394 -43 -123 -392 -42 -121 ~-1 ~-1 ~-1 masked

# Playsound(s)
execute at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a ~ ~ ~ 1 1.3
execute at @s run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.nether_bricks.place block @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:block.nether_bricks.place block @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:block.nether_bricks.place block @a ~ ~ ~ 1 0.8

# Remove interaction if already max node state (ugpraded)
execute if score @s NodeState matches 2 run function exigence:altar/node/remove_interaction

# Damage player
damage @p[tag=Lighting] 2 minecraft:generic

# If game is inactive, return here
execute unless data storage exigence:dungeon {is_active:1} run return 1
#========================================================================================================

# Give player score
scoreboard players add @p[tag=Lighting] cr_altarsRed 1
scoreboard players add @p[tag=Lighting] t_altarsRed 1

# Reduce menace by 1
function exigence:menace/try_reduce_menace

# Increase aqua by 1
execute as @p[tag=Lighting] run function exigence:resources/try_generate {green:0,red:0,aqua:1}

# Give tracker score
scoreboard players add @s AltarTimesRed 1

# Try give spark?
execute as @p[tag=Lighting] run function exigence:altar/puzzle/give_spark

# Call concordance
execute as @a[tag=ActivePlayer,tag=Lighting] run function exigence:cards/concordance/private/trigger
