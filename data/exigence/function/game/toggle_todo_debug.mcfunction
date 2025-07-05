# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {todo:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {todo:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {todo:1} run say Turning todo off
execute if data storage exigence:debug {todo:0} run say Turning todo on

# Update actual value
data modify storage exigence:debug todo set from storage temp debug


# 2. Run commands depending on debug state

# Modify data of all armorstands with "debug" tag
#  - Glowing
#  - CustomNameVisible
#  - Marker
execute if data storage exigence:debug {todo:1} as @e[type=minecraft:armor_stand,tag=TodoNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}
execute if data storage exigence:debug {todo:0} as @e[type=minecraft:armor_stand,tag=TodoNode] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Invisible:1b,Marker:1b}
