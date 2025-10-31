# Summon big echo ember

## CONSTRAINTS
#   AS echo node
#   AT location

#==============================================================================================================

#say Drop big

# Summon new ember drop
loot spawn ~ ~0.5 ~ loot exigence:ember/ember_echo_big

# Execute common functions
execute as @e[distance=..4,type=item,nbt={Item:{components:{"minecraft:custom_data":{just_spawned:'true'}}}}] run function exigence:ember/echo_embers/ember_data

# Early return if Tutorial
execute if score @s ObjectLevel matches 10 run return 1

# Increase scores
scoreboard players add @a[tag=ActivePlayer] profile.data.ember.cr.embers_echo_dropped 10
execute if score @s ObjectLevel matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.ember.cr.embers_echo_dropped_L1 10
execute if score @s ObjectLevel matches 2 run scoreboard players add @a[tag=ActivePlayer] profile.data.ember.cr.embers_echo_dropped_L2 10
execute if score @s ObjectLevel matches 3 run scoreboard players add @a[tag=ActivePlayer] profile.data.ember.cr.embers_echo_dropped_L3 10
execute if score @s ObjectLevel matches 4 run scoreboard players add @a[tag=ActivePlayer] profile.data.ember.cr.embers_echo_dropped_L4 10
