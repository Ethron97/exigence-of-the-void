# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {bookshelf:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {bookshelf:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {bookshelf:1} run say Turning bookshelf debug off
execute if data storage exigence:debug {bookshelf:0} run say Turning bookshelf debug on

# Update actual value
data modify storage exigence:debug bookshelf set from storage temp debug

# 2. Run commands depending on debug state
$execute if data storage exigence:debug {bookshelf:1} as @e[type=minecraft:marker,scores={node.property.object_level=$(levels)},tag=BookshelfNode] at @s run function exigence:mirror/bookshelf/node/debug/on
execute if data storage exigence:debug {bookshelf:0} as @e[type=minecraft:marker,tag=BookshelfNode] at @s run function exigence:mirror/bookshelf/node/debug/off