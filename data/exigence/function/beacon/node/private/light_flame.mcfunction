# The beacon is lit, McGondor calls for aid!

## CONSTRAINTS
#   AS Beaconnode

#========================================================================================================

# Set block to fire
execute at @s run setblock ~ ~ ~ minecraft:soul_fire

# Remove interaction
function exigence:beacon/node/remove_interaction

# Reduce menace
execute if score Menace DungeonRun matches 1.. run scoreboard players remove Menace DungeonRun 1

# Increase aqua
execute as @p[tag=Lighting] run function exigence:resources/try_generate {green:0,red:0,aqua:1}

# Start animation to light the rest of the beacon
tag @s add BeaconLightLoop
# Set score to triggered
scoreboard players set @s NodeState 3
function exigence:beacon/node/light_beacon_loop

# Playsound
execute at @s run playsound minecraft:item.flintandsteel.use neutral @a ~ ~ ~

# Clear ardor flame
execute if score @s ObjectLevel matches 1 run clear @a[tag=Lighting] nether_star[custom_model_data={"strings":[ardor_flame_1]}] 1
execute if score @s ObjectLevel matches 2 run clear @a[tag=Lighting] nether_star[custom_model_data={"strings":[ardor_flame_2]}] 1
execute if score @s ObjectLevel matches 3 run clear @a[tag=Lighting] nether_star[custom_model_data={"strings":[ardor_flame_3]}] 1
execute if score @s ObjectLevel matches 4 run clear @a[tag=Lighting] nether_star[custom_model_data={"strings":[ardor_flame_4]}] 1
