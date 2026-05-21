# Teleports the preview and marks it as "valid"

## CONSTRAINTS
#   AS phantom preview block display
#   AT location to teleport to

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 4.. run say (D4 Player) Teleport teleport preview

teleport @s ~ ~ ~

# Add confirmation tag
tag @s add Teleported

tag @s remove Home