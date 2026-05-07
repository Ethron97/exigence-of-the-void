# Toggle debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.treasure debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.treasure debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.treasure debug matches 1 run say Turning treasure debug off
execute if score toggle.treasure debug matches 0 run say Turning treasure debug on

# Update actual value
scoreboard players operation toggle.treasure debug = #temp debug

# 2. Run commands depending on debug state
$execute if score toggle.treasure debug matches 1 as @e[type=minecraft:item,scores={game.entity.object_level=$(levels)},team=Treasure] run data modify entity @s Glowing set value true
execute if score toggle.treasure debug matches 0 as @e[type=minecraft:item,team=Treasure] run data modify entity @s Glowing set value false

$execute if score toggle.treasure debug matches 1 as @e[type=minecraft:marker,scores={node.property.object_level=$(levels)},tag=TreasureNode] at @s run function exigence:treasure/node/debug/on
execute if score toggle.treasure debug matches 0 as @e[type=minecraft:marker,tag=TreasureNode] at @s run function exigence:treasure/node/debug/off
