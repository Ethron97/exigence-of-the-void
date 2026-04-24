# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {berry:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {berry:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {berry:1} run say Turning berry debug off
execute if data storage exigence:debug {berry:0} run say Turning berry debug on

# Update actual value
data modify storage exigence:debug berry set from storage temp debug


# 2. Run commands depending on debug state
$execute if data storage exigence:debug {berry:1} as @e[type=minecraft:marker,scores={node.property.object_level=$(levels)},tag=BerryNode] at @s run function exigence:botany/node/debug/on
execute if data storage exigence:debug {berry:0} as @e[type=minecraft:marker,tag=BerryNode] at @s run function exigence:botany/node/debug/off
