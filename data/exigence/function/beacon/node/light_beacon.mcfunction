execute if score @s NodeState matches 4 run setblock ~1 ~ ~ minecraft:soul_fire
execute if score @s NodeState matches 5 run setblock ~1 ~ ~1 minecraft:soul_fire
execute if score @s NodeState matches 6 run setblock ~ ~ ~1 minecraft:soul_fire
execute if score @s NodeState matches 7 run setblock ~-1 ~ ~1 minecraft:soul_fire
execute if score @s NodeState matches 8 run setblock ~-1 ~ ~ minecraft:soul_fire
execute if score @s NodeState matches 9 run setblock ~-1 ~ ~-1 minecraft:soul_fire
execute if score @s NodeState matches 10 run setblock ~ ~ ~-1 minecraft:soul_fire
execute if score @s NodeState matches 11 run setblock ~1 ~ ~-1 minecraft:soul_fire

execute if score @s NodeState matches 4 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1
execute if score @s NodeState matches 5 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.1
execute if score @s NodeState matches 6 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.2
execute if score @s NodeState matches 7 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.3
execute if score @s NodeState matches 8 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.4
execute if score @s NodeState matches 9 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.5
execute if score @s NodeState matches 10 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.6
execute if score @s NodeState matches 11 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 1 1.7
