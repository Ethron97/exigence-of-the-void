# Toggle debug (show nodes and enable chat debug)

#====================================================================================================

# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if score toggle.vault debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.vault debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.vault debug matches 1 run say Turning vault debug off
execute if score toggle.vault debug matches 0 run say Turning vault debug on

# Update actual value
scoreboard players operation toggle.vault debug = #temp debug

# 2. Run commands depending on debug state
$execute if score toggle.vault debug matches 1 as @e[type=minecraft:marker,scores={node.property.object_level=$(levels)},tag=VaultNode] at @s run function exigence:vault/node/debug/on
execute if score toggle.vault debug matches 0 as @e[type=minecraft:marker,tag=VaultNode] at @s run function exigence:vault/node/debug/off

# Create pot displays
execute if score toggle.vault debug matches 1 as @e[type=minecraft:marker,tag=PotMarker] run function exigence:vault/pot/debug/summon_pot_display with entity @s data.custom_data
# Kill pot displays
execute if score toggle.vault debug matches 0 run kill @e[type=minecraft:block_display,tag=PotDebugDisplay]
