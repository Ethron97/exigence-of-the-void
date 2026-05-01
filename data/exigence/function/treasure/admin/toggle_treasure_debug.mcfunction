# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {treasure:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {treasure:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {treasure:1} run say Turning treasure debug off
execute if data storage exigence:debug {treasure:0} run say Turning treasure debug on

# Update actual value
data modify storage exigence:debug treasure set from storage temp debug


# 2. Run commands depending on debug state
$execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:item,scores={game.entity.object_level=$(levels)},team=Treasure] run data modify entity @s Glowing set value true
execute if data storage exigence:debug {treasure:0} as @e[type=minecraft:item,team=Treasure] run data modify entity @s Glowing set value false

$execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:marker,scores={node.property.object_level=$(levels)},tag=TreasureNode] at @s run function exigence:treasure/node/debug/on
execute if data storage exigence:debug {treasure:0} as @e[type=minecraft:marker,tag=TreasureNode] at @s run function exigence:treasure/node/debug/off
