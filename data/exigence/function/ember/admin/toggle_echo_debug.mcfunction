# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {echo:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {echo:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {echo:1} run say Turning echo debug off
execute if data storage exigence:debug {echo:0} run say Turning echo debug on

# Update actual value
data modify storage exigence:debug echo set from storage temp debug


# 2. Run commands depending on debug state
$execute if data storage exigence:debug {echo:1} as @e[type=minecraft:marker,scores={node.property.object_level=$(levels)},tag=EchoNode] at @s run function exigence:ember/node/debug/on
execute if data storage exigence:debug {echo:0} as @e[type=minecraft:marker,tag=EchoNode] at @s run function exigence:ember/node/debug/off
