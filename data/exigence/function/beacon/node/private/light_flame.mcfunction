# The beacon is lit, McGondor calls for aid!

## CONSTRAINTS
#   AS Beaconnode

#====================================================================================================

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Light beacon FLAME

# Set block to fire
execute at @s run setblock ~ ~ ~ minecraft:soul_fire

# Remove interaction
function exigence:beacon/node/setup/remove_interaction

# Reduce menace
execute if score menace.current game.dungeon.menace matches 1.. run scoreboard players remove menace.current game.dungeon.menace 1

# Increase aqua
execute as @p[tag=Lighting] run function exigence:resources/try_generate {green:0,red:0,aqua:1}

# Clear ardor ember
item modify entity @p[tag=Lighting,gamemode=!creative] weapon.mainhand exigence:decrement

# Set score to triggered
scoreboard players set @s game.node.node_state 3

# Run first tick of animation
function exigence:beacon/node/light_beacon

# Playsound
execute at @s run playsound minecraft:item.flintandsteel.use neutral @a ~ ~ ~

# Clear ardor flame
execute if score @s node.property.object_level matches 1 run clear @a[tag=Lighting] nether_star[custom_model_data={"strings":[ardor_flame_1]}]
execute if score @s node.property.object_level matches 2 run clear @a[tag=Lighting] nether_star[custom_model_data={"strings":[ardor_flame_2]}]
execute if score @s node.property.object_level matches 3 run clear @a[tag=Lighting] nether_star[custom_model_data={"strings":[ardor_flame_3]}]
execute if score @s node.property.object_level matches 4 run clear @a[tag=Lighting] nether_star[custom_model_data={"strings":[ardor_flame_4]}]
