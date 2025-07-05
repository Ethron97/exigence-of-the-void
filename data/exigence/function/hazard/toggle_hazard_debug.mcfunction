# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {hazard:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {hazard:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {hazard:1} run say Turning hazard debug off
execute if data storage exigence:debug {hazard:0} run say Turning hazard debug on

# Update actual value
data modify storage exigence:debug hazard set from storage temp debug


# 2. Run commands depending on debug state
$execute if data storage exigence:debug {hazard:1} as @e[type=minecraft:armor_stand,tag=HazardNode,scores={ObjectLevel=$(levels)}] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}
execute if data storage exigence:debug {hazard:0} as @e[type=minecraft:armor_stand,tag=HazardNode] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Invisible:1b,Marker:1b}
