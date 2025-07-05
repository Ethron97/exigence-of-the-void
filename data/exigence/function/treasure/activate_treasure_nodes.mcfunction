# To be called from game_on.mcfunction

# Deactivate all treasure nodes
tag @e[type=minecraft:armor_stand,tag=TreasureNode] remove Active

# Reset all "Random" scores
execute as @e[type=minecraft:armor_stand,tag=TreasureNode] run scoreboard players set @s Random 0

# Activate all treasure nodes on or below difficulty (unless tutorial)
execute if score Difficulty DungeonRun matches 0 as @e[type=minecraft:armor_stand,tag=TreasureNode,tag=L0] run scoreboard players set @s Random 1
execute if score Difficulty DungeonRun matches 1.. as @e[type=minecraft:armor_stand,tag=TreasureNode] if score @s ObjectLevel <= Difficulty DungeonRun run scoreboard players set @s Random 1

execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={Random=1}] run tag @s add Active