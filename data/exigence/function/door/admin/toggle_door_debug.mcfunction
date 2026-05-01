# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {door:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {door:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {door:1} run say Turning door debug off
execute if data storage exigence:debug {door:0} run say Turning door debug on

# Update actual value
data modify storage exigence:debug door set from storage temp debug


# 2. Run commands depending on debug state
execute if data storage exigence:debug {door:1} as @e[type=minecraft:marker,tag=DoorNode] at @s run function exigence:door/level/debug/on
execute if data storage exigence:debug {door:0} as @e[type=minecraft:marker,tag=DoorNode] at @s run function exigence:door/level/debug/off
