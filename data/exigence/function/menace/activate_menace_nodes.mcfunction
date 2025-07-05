# To be called from game_on.mcfunction to setup menace nodes

# Deactivate all menace nodes
tag @e[type=minecraft:armor_stand,tag=MenaceNode] remove Active

# Reset all "Random" scores
execute as @e[type=minecraft:armor_stand,tag=MenaceNode] run scoreboard players set @s Random 0

# Each individual menace node, regardless of level, has a 1/3 chance. Roll into Random scoreboard.
#   All are active for the tutorial level for consistency.
execute if score Difficulty DungeonRun matches 1 as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=1}] store result score @s Random run random value 1..6
execute if score Difficulty DungeonRun matches 2 as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=1..2}] store result score @s Random run random value 1..6
execute if score Difficulty DungeonRun matches 3 as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=1..3}] store result score @s Random run random value 1..6
execute if score Difficulty DungeonRun matches 4 as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=1..4}] store result score @s Random run random value 1..6

# Also adding a buffer/min.
execute if score Difficulty DungeonRun matches 1.. as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=1},limit=3,sort=random] run scoreboard players set @s Random 1
execute if score Difficulty DungeonRun matches 2.. as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=2},limit=3,sort=random] run scoreboard players set @s Random 1
execute if score Difficulty DungeonRun matches 3.. as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=3},limit=3,sort=random] run scoreboard players set @s Random 1
execute if score Difficulty DungeonRun matches 4 as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=4},limit=3,sort=random] run scoreboard players set @s Random 1

# For all menance nodes that rolled a 1, set active
execute as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={Random=1}] run tag @s add Active

#execute as @e[type=minecraft:armor_stand,tag=MenaceNode,tag=Active] run say I'm active!
