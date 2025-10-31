# The beacon is lit (maybe), McGondor calls for aid!

## CONSTRAINTS
#   AS BeaconNode

#========================================================================================================

# Increment node state
scoreboard players add @s game.node.node_state 1

# Node state 0 = active
# Node state 1 = 1 ember
# Node state 2 = 2 ember
# Node state 3 = 3 ember

# Set middle block
execute if score @s game.node.node_state matches 1 at @s run setblock ~ ~-1 ~ minecraft:netherrack
execute if score @s game.node.node_state matches 1 at @s run setblock ~ ~ ~ minecraft:fire

execute if score @s game.node.node_state matches 2 at @s run setblock ~ ~-1 ~ minecraft:soul_soil
execute if score @s game.node.node_state matches 2 at @s run setblock ~ ~ ~ minecraft:soul_fire

# Title for 1/3, 2/3
execute if score @s game.node.node_state matches 1 run title @a[tag=ActivePlayer] subtitle [{text:"1/3",color:"aqua"}]
execute if score @s game.node.node_state matches 2 run title @a[tag=ActivePlayer] subtitle [{text:"2/3",color:"aqua"}]
execute if score @s game.node.node_state matches 1..2 run title @a[tag=ActivePlayer] title ""

# Playsound
execute at @s run playsound minecraft:item.flintandsteel.use neutral @a ~ ~ ~

# Clear ardor ember
execute if score @s ObjectLevel matches 1 run clear @a[tag=Lighting] ghast_tear[custom_model_data={"strings":["ardor_ember_1"]}] 1
execute if score @s ObjectLevel matches 2 run clear @a[tag=Lighting] ghast_tear[custom_model_data={"strings":["ardor_ember_2"]}] 1
execute if score @s ObjectLevel matches 3 run clear @a[tag=Lighting] ghast_tear[custom_model_data={"strings":["ardor_ember_3"]}] 1
execute if score @s ObjectLevel matches 4 run clear @a[tag=Lighting] ghast_tear[custom_model_data={"strings":["ardor_ember_4"]}] 1


#========================================================================================================
# Only run past here if the final state was lit
execute if score @s game.node.node_state matches ..2 run return 1

# Remove interaction
function exigence:beacon/node/remove_interaction

# Reduce menace
execute if score Menace DungeonRun matches 1.. run scoreboard players remove Menace DungeonRun 1

# Increase aqua
execute as @p[tag=Lighting] run function exigence:resources/try_generate {green:0,red:0,aqua:1}

# Start animation to light the rest of the beacon
tag @s add BeaconLightLoop
function exigence:beacon/node/light_beacon_loop

# Clear leftover ardor ember
execute if score @s ObjectLevel matches 1 run clear @a ghast_tear[custom_model_data={"strings":[ardor_ember_1]}]
execute if score @s ObjectLevel matches 2 run clear @a ghast_tear[custom_model_data={"strings":[ardor_ember_2]}]
execute if score @s ObjectLevel matches 3 run clear @a ghast_tear[custom_model_data={"strings":[ardor_ember_3]}]
execute if score @s ObjectLevel matches 4 run clear @a ghast_tear[custom_model_data={"strings":[ardor_ember_4]}]

# Kill leftover ardor ember items
scoreboard players operation #compare ObjectLevel = @s ObjectLevel
execute if data storage exigence:dungeon {is_active:1} run execute as @e[type=minecraft:item,tag=ArdorEmber] if score @s ObjectLevel = #compare ObjectLevel run kill @s
