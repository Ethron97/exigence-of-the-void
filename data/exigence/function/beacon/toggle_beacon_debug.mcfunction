# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {beacon:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {beacon:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {beacon:1} run say Turning beacon debug off
execute if data storage exigence:debug {beacon:0} run say Turning beacon debug on

# Update actual value
data modify storage exigence:debug beacon set from storage temp debug


# 2. Run commands depending on debug state
$execute if data storage exigence:debug {beacon:1} as @e[type=minecraft:armor_stand,tag=BeaconNode,scores={ObjectLevel=$(levels)}] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}
execute if data storage exigence:debug {beacon:0} as @e[type=minecraft:armor_stand,tag=BeaconNode] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Invisible:1b,Marker:1b}

# Glow ardor flame/embers on ground
$execute if data storage exigence:debug {beacon:1} as @e[type=minecraft:item,tag=ArdorFlame,scores={ObjectLevel=$(levels)}] run data modify entity @s Glowing set value true
execute if data storage exigence:debug {beacon:0} as @e[type=minecraft:item,tag=ArdorFlame] run data modify entity @s Glowing set value false

$execute if data storage exigence:debug {beacon:1} as @e[type=minecraft:item,tag=ArdorEmber,scores={ObjectLevel=$(levels)}] run data modify entity @s Glowing set value true
execute if data storage exigence:debug {beacon:0} as @e[type=minecraft:item,tag=ArdorEmber] run data modify entity @s Glowing set value false
