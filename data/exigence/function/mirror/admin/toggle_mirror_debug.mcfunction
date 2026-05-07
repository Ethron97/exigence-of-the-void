# Toggle debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.mirror debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.mirror debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.mirror debug matches 1 run say Turning mirror debug off
execute if score toggle.mirror debug matches 0 run say Turning mirror debug on

# Update actual value
scoreboard players operation toggle.mirror debug = #temp debug

# 2. Run commands depending on debug state
$execute if score toggle.mirror debug matches 1 as @e[type=minecraft:armor_stand,scores={node.property.object_level=$(levels)},tag=MirrorNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}
execute if score toggle.mirror debug matches 0 as @e[type=minecraft:armor_stand,tag=MirrorNode] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Invisible:1b,Marker:1b}

# Create pot displays
$execute if score toggle.mirror debug matches 1 as @e[type=minecraft:marker,scores={node.property.object_level=$(levels)},tag=HiddenBlock] at @s positioned ~-.5 ~ ~-.5 run function exigence:mirror/hidden_blocks/debug/summon_display
# Kill pot displays
execute if score toggle.mirror debug matches 0 run kill @e[type=minecraft:block_display,tag=HiddenBlockDebug]
