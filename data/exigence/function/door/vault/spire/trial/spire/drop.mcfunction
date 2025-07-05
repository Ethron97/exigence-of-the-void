# Drop this spire by 1

## CONSTRAINTS
#   AS spire marker

#=============================================================================================================

# DEBUG
#say Dropping

# Remove this block
execute at @s run fill ~ ~ ~ ~ ~ ~ air replace minecraft:purpur_pillar

# If block below this is barrier, just kill self and return
#execute at @s if block ~ ~-1 ~ minecraft:barrier run kill @s[type=marker,tag=Spire]
#execute unless entity @s[type=marker,tag=Spire] run return 1

# Teleport down one block
execute at @s run tp @s ~ ~-1 ~

# Full purpur
execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:purpur_pillar replace air
