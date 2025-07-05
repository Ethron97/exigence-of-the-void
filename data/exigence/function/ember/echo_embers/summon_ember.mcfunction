# Summon normal echo ember

## CONSTRAINTS
#   AS echo node
#   AT location

#==============================================================================================================

#say Drop normal

# Summon new ember drop
loot spawn ~ ~0.5 ~ loot exigence:ember/ember_echo

# Execute common functions
execute as @e[distance=..4,type=item,nbt={Item:{components:{"minecraft:custom_data":{just_spawned:'true'}}}}] run function exigence:ember/echo_embers/ember_data

# Increase scores
scoreboard players add @s cr_embersEchoDropped 1
execute if score @s ObjectLevel matches 1 run scoreboard players add @a[tag=ActivePlayer] cr_embersEchoDroppedL1 1
execute if score @s ObjectLevel matches 1 run scoreboard players add @a[tag=ActivePlayer] t_embersEchoDroppedL1 1
execute if score @s ObjectLevel matches 2 run scoreboard players add @a[tag=ActivePlayer] cr_embersEchoDroppedL2 1
execute if score @s ObjectLevel matches 2 run scoreboard players add @a[tag=ActivePlayer] t_embersEchoDroppedL2 1
execute if score @s ObjectLevel matches 3 run scoreboard players add @a[tag=ActivePlayer] cr_embersEchoDroppedL3 1
execute if score @s ObjectLevel matches 3 run scoreboard players add @a[tag=ActivePlayer] t_embersEchoDroppedL3 1
execute if score @s ObjectLevel matches 4 run scoreboard players add @a[tag=ActivePlayer] cr_embersEchoDroppedL4 1
execute if score @s ObjectLevel matches 4 run scoreboard players add @a[tag=ActivePlayer] t_embersEchoDroppedL4 1
