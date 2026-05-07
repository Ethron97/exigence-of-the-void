# Toggle debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.menace debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.menace debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.menace debug matches 1 run say Turning menace debug off
execute if score toggle.menace debug matches 0 run say Turning menace debug on

# Update actual value
scoreboard players operation toggle.menace debug = #temp debug

# 2. Run commands depending on debug state
$execute if score toggle.menace debug matches 1 as @e[type=minecraft:marker,scores={node.property.object_level=$(levels)},tag=MenaceNode] at @s run function exigence:menace/node/debug/on
execute if score toggle.menace debug matches 0 as @e[type=minecraft:marker,tag=MenaceNode] at @s run function exigence:menace/node/debug/off
