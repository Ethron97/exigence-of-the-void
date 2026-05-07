# Toggle beacon debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.beacon debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.beacon debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.beacon debug matches 1 run say Turning beacon debug off
execute if score toggle.beacon debug matches 0 run say Turning beacon debug on

# Update actual value
scoreboard players operation toggle.beacon debug = #temp debug

# 2. Run commands depending on debug state
$execute if score toggle.beacon debug matches 1 as @e[type=minecraft:marker,scores={node.property.object_level=$(levels)},tag=BeaconNode] at @s run function exigence:beacon/node/debug/on
execute if score toggle.beacon debug matches 0 as @e[type=minecraft:marker,tag=BeaconNode] at @s run function exigence:beacon/node/debug/off

# Glow ardor flame/embers on ground
$execute if score toggle.beacon debug matches 1 as @e[type=minecraft:item,scores={node.property.object_level=$(levels)},tag=ArdorFlame] run data modify entity @s Glowing set value true
execute if score toggle.beacon debug matches 0 as @e[type=minecraft:item,tag=ArdorFlame] run data modify entity @s Glowing set value false

$execute if score toggle.beacon debug matches 1 as @e[type=minecraft:item,scores={node.property.object_level=$(levels)},tag=ArdorEmber] run data modify entity @s Glowing set value true
execute if score toggle.beacon debug matches 0 as @e[type=minecraft:item,tag=ArdorEmber] run data modify entity @s Glowing set value false
