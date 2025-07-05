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
$execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:armor_stand,tag=TreasureNodeBox,scores={ObjectLevel=$(levels)}] run function exigence:treasure/node/debug/create_bb
execute if data storage exigence:debug {treasure:0} as @e[type=minecraft:armor_stand,tag=TreasureNodeBox] run function exigence:treasure/node/debug/remove_bb

$execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:item,tag=VaultKey,scores={ObjectLevel=$(levels)}] run data modify entity @s Glowing set value true
execute if data storage exigence:debug {treasure:0} as @e[type=minecraft:item,tag=VaultKey] run data modify entity @s Glowing set value false
$execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:item,tag=Coin,scores={ObjectLevel=$(levels)}] run data modify entity @s Glowing set value true
execute if data storage exigence:debug {treasure:0} as @e[type=minecraft:item,tag=Coin] run data modify entity @s Glowing set value false
$execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:item,tag=Sherd,scores={ObjectLevel=$(levels)}] run data modify entity @s Glowing set value true
execute if data storage exigence:debug {treasure:0} as @e[type=minecraft:item,tag=Sherd] run data modify entity @s Glowing set value false
$execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:item,tag=LevelKey,scores={ObjectLevel=$(levels)}] run data modify entity @s Glowing set value true
execute if data storage exigence:debug {treasure:0} as @e[type=minecraft:item,tag=LevelKey] run data modify entity @s Glowing set value false

$execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=$(levels)}] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}
execute if data storage exigence:debug {treasure:0} as @e[type=minecraft:armor_stand,tag=TreasureNode] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Invisible:1b,Marker:1b}
