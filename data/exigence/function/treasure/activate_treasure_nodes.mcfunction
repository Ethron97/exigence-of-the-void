# To be called from game_on.mcfunction

# Deactivate all treasure nodes
tag @e[type=minecraft:armor_stand,tag=TreasureNode] remove Active

# Reset all "Random" scores
execute as @e[type=minecraft:armor_stand,tag=TreasureNode] run scoreboard players set @s Random 0

# Activate all treasure nodes on or below difficulty (unless tutorial)
execute if score game.difficulty game.state matches 0 as @e[type=minecraft:armor_stand,tag=TreasureNode,tag=L0] run scoreboard players set @s Random 1
execute if score game.difficulty game.state matches 1.. as @e[type=minecraft:armor_stand,tag=TreasureNode] if score @s node.property.object_level <= game.difficulty game.state run scoreboard players set @s Random 1

execute as @e[type=minecraft:armor_stand,scores={Random=1},tag=TreasureNode] run tag @s add Active