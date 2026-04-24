# For simplicity, EchoNodes are also EmberNodes currently

# Deactivate all ember nodes
tag @e[type=minecraft:marker,tag=EmberNode] remove Active

# Reset all "Random" scores
execute as @e[type=minecraft:marker,tag=EmberNode] run scoreboard players set @s Random 0

execute if score game.difficulty game.state matches 0 as @e[type=minecraft:marker,tag=EmberNode,tag=L0] run scoreboard players set @s Random 1
# Activate if lower or equal to difficulty
execute if score game.difficulty game.state matches 1.. as @e[type=minecraft:marker,tag=EmberNode] if score @s node.property.object_level <= game.difficulty game.state run scoreboard players set @s Random 1

execute as @e[type=minecraft:marker,scores={Random=1},tag=EmberNode] run tag @s add Active