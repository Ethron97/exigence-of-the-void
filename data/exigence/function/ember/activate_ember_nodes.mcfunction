# For simplicity, EchoNodes are also EmberNodes currently

# Deactivate all ember nodes
tag @e[type=minecraft:armor_stand,tag=EmberNode] remove Active

# Reset all "Random" scores
execute as @e[type=minecraft:armor_stand,tag=EmberNode] run scoreboard players set @s Random 0

execute if score Difficulty DungeonRun matches 0 as @e[type=minecraft:armor_stand,tag=EmberNode,tag=L0] run scoreboard players set @s Random 1
# Activate if lower or equal to difficulty
execute if score Difficulty DungeonRun matches 1.. as @e[type=minecraft:armor_stand,tag=EmberNode] if score @s ObjectLevel <= Difficulty DungeonRun run scoreboard players set @s Random 1

execute as @e[type=minecraft:armor_stand,tag=EmberNode,scores={Random=1}] run tag @s add Active