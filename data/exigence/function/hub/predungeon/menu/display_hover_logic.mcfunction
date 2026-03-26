# Handle hover logic

## CONSTRAINTS
#   AS item display

#====================================================================================================

# Unhover old entity (unless it is the same as current)
execute as @s[tag=OldHover,tag=!Hover] run function exigence:hub/predungeon/menu/display/unhover with entity @s item.components."minecraft:custom_data"

# Hover new entity (unless it is the same as old)
execute as @s[tag=!OldHover,tag=Hover] run function exigence:hub/predungeon/menu/display/hover with entity @s item.components."minecraft:custom_data"

tag @s[tag=OldHover] remove OldHover