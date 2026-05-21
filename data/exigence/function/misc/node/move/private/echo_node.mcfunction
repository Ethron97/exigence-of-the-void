# Handle moving of node (take debug etc into account)

## CONSTRAINTS
#   AS EchoNode
#   AT location

#====================================================================================================

# Disable debug ( so we don't orphan debug entities )
execute at @s run function exigence:ember/node/debug/off

# Teleport
execute align x align z run tp @s ~0.5 ~ ~0.5 90 0

# Enable debug ( conditionally)
execute if score toggle.echo debug matches 1 at @s run function exigence:ember/node/debug/on