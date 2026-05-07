# Teleports the preview and marks it as "valid"

## CONSTRAINTS
#   AS phantom preview block display
#   AT location to teleport to

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) I am teleporting

teleport @s ~ ~ ~

tag @s add Valid
