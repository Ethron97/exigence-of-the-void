## CONSTRAINTS
#   AS ravager

#====================================================================================================

#say (D3) I am tryig to eat

# If the nearest berry bush (on same level) is active, give +30s Beast Sense and then deactivate
scoreboard players operation #compare game.entity.object_level = @s game.entity.object_level
execute at @s as @n[type=minecraft:marker,tag=BerryNode,distance=..50] if score @s node.property.object_level = #compare game.entity.object_level if entity @s[tag=Active] run function exigence:cards/berry_breath/private/eat

# Remove local tag
tag @s remove TryEat
