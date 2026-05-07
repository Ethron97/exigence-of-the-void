# Light beacon state/loop

## CONSTRAINTS
#   AS/AT beacon node
#   if node_state = 3..10

#====================================================================================================

scoreboard players add @s game.node.node_state 1

execute if score @s game.node.node_state matches 4 run setblock ~1 ~ ~ minecraft:soul_fire
execute if score @s game.node.node_state matches 5 run setblock ~1 ~ ~1 minecraft:soul_fire
execute if score @s game.node.node_state matches 6 run setblock ~ ~ ~1 minecraft:soul_fire
execute if score @s game.node.node_state matches 7 run setblock ~-1 ~ ~1 minecraft:soul_fire
execute if score @s game.node.node_state matches 8 run setblock ~-1 ~ ~ minecraft:soul_fire
execute if score @s game.node.node_state matches 9 run setblock ~-1 ~ ~-1 minecraft:soul_fire
execute if score @s game.node.node_state matches 10 run setblock ~ ~ ~-1 minecraft:soul_fire
execute if score @s game.node.node_state matches 11 run setblock ~1 ~ ~-1 minecraft:soul_fire

execute if score @s game.node.node_state matches 4 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1
execute if score @s game.node.node_state matches 5 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.1
execute if score @s game.node.node_state matches 6 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.2
execute if score @s game.node.node_state matches 7 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.3
execute if score @s game.node.node_state matches 8 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.4
execute if score @s game.node.node_state matches 9 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.5
execute if score @s game.node.node_state matches 10 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.6
execute if score @s game.node.node_state matches 11 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.7

# Track beacon got lit
execute if score @s game.node.node_state matches 11.. run function exigence:beacon/node/private/track_beacon_lit
# Remove local tag
execute if score @s game.node.node_state matches 11.. run tag @s remove BeaconLightLoop