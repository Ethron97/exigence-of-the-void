# Teleport the preview based on where the player is looking

## CONSTRAINTS
#   AS teleport preview (mannequin)
#   AT position (30 blocks ahead of player)

## INPUT
#   SCORE #preview_level Temp 1-4

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 5.. run say (D5 Player) Update teleport preview

# Reset confirmation tag
tag @s remove Teleported

# Tag a node closest to 30 blocks in the direction the player is looking, within 25 blocks, and on the same level as the player
execute if score #preview_level Temp matches 1 at @n[type=minecraft:marker,scores={node.property.object_level=1},tag=PhantomNode,distance=..25] run function exigence:player/utility/teleport_preview/teleport_preview
execute if score #preview_level Temp matches 2 at @n[type=minecraft:marker,scores={node.property.object_level=2},tag=PhantomNode,distance=..25] run function exigence:player/utility/teleport_preview/teleport_preview
execute if score #preview_level Temp matches 3 at @n[type=minecraft:marker,scores={node.property.object_level=3},tag=PhantomNode,distance=..25] run function exigence:player/utility/teleport_preview/teleport_preview
execute if score #preview_level Temp matches 4 at @n[type=minecraft:marker,scores={node.property.object_level=4},tag=PhantomNode,distance=..25] run function exigence:player/utility/teleport_preview/teleport_preview

execute if entity @s[tag=Teleported] if score toggle.player debug matches 1 if score debug.level debug matches 4.. run say (D4 Player) Did teleport
execute if entity @s[tag=Teleported] run scoreboard players set #did_teleport Temp 1
# If did not teleport (no valid space found) tp preview back to start
execute if entity @s[tag=!Teleported,tag=!Home] run function exigence:player/utility/teleport_preview/reset_preview