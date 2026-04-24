# To be called from game_on.mcfunction to setup menace nodes

# Deactivate all menace nodes
tag @e[type=minecraft:armor_stand,tag=MenaceNode] remove Active

# Reset all "Random" scores
execute as @e[type=minecraft:armor_stand,tag=MenaceNode] run scoreboard players set @s Random 0

# Each individual menace node, regardless of level, has a 1/3 chance. Roll into Random scoreboard.
#   All are active for the tutorial level for consistency.
execute if score game.difficulty game.state matches 1 as @e[type=minecraft:armor_stand,scores={node.property.object_level=1},tag=MenaceNode] store result score @s Random run random value 1..6
execute if score game.difficulty game.state matches 2 as @e[type=minecraft:armor_stand,scores={node.property.object_level=1..2},tag=MenaceNode] store result score @s Random run random value 1..6
execute if score game.difficulty game.state matches 3 as @e[type=minecraft:armor_stand,scores={node.property.object_level=1..3},tag=MenaceNode] store result score @s Random run random value 1..6
execute if score game.difficulty game.state matches 4 as @e[type=minecraft:armor_stand,scores={node.property.object_level=1..4},tag=MenaceNode] store result score @s Random run random value 1..6

# Also adding a buffer/min.
execute if score game.difficulty game.state matches 1.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=1},tag=MenaceNode,sort=random,limit=3] run scoreboard players set @s Random 1
execute if score game.difficulty game.state matches 2.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=2},tag=MenaceNode,sort=random,limit=3] run scoreboard players set @s Random 1
execute if score game.difficulty game.state matches 3.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=3},tag=MenaceNode,sort=random,limit=3] run scoreboard players set @s Random 1
execute if score game.difficulty game.state matches 4 as @e[type=minecraft:armor_stand,scores={node.property.object_level=4},tag=MenaceNode,sort=random,limit=3] run scoreboard players set @s Random 1

# For all menance nodes that rolled a 1, set active
execute as @e[type=minecraft:armor_stand,scores={Random=1},tag=MenaceNode] run tag @s add Active

#execute as @e[type=minecraft:armor_stand,tag=MenaceNode,tag=Active] run say I'm active!
