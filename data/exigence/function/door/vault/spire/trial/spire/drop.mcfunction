# Drop this spire by 1

## CONSTRAINTS
#   AS spire marker

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 4.. run say (D4 Trial) Dropping

# Remove this block
execute at @s run fill ~ ~ ~ ~ ~ ~ air replace minecraft:purpur_pillar

# If block below this is barrier, just kill self and return
#execute at @s if block ~ ~-1 ~ minecraft:barrier run kill @s[type=minecraft:marker,tag=SpireObject]
#execute unless entity @s[type=minecraft:marker,tag=SpireObject] run return 1
#----------------------------------------------------------------------------------------------------

# Teleport down one block
execute at @s run tp @s ~ ~-1 ~

# Try fill purpur
execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:purpur_pillar replace air

# If within barrier, kill
execute at @s if block ~ ~ ~ minecraft:barrier run kill @s