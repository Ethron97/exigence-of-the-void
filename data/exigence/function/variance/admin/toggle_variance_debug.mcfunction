# Toggle debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.variance debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.variance debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.variance debug matches 1 run say Turning variance debug off
execute if score toggle.variance debug matches 0 run say Turning variance debug on

# Update actual value
scoreboard players operation toggle.variance debug = #temp debug

# 2. Run commands depending on debug state
$execute if score toggle.variance debug matches 1 as @e[type=minecraft:marker,scores={node.property.object_level=$(levels)},tag=VarianceNode] at @s run function exigence:variance/node/debug/on
execute if score toggle.variance debug matches 0 as @e[type=minecraft:marker,tag=VarianceNode] at @s run function exigence:variance/node/debug/off
