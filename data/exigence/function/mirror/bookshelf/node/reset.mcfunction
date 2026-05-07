# Reset bookshelf

## CONSTRAINTS
#   AS bookshelf node

#====================================================================================================

# Reset tag
tag @s remove Active
tag @s remove ETICK

# Clear block contents
data modify block ~ ~ ~ Items set value []

# Reset bookshelves
execute if entity @s[tag=FacingEast] at @s run return run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=east]
execute if entity @s[tag=FacingWest] at @s run return run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=west]
execute if entity @s[tag=FacingNorth] at @s run return run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=north]
execute if entity @s[tag=FacingSouth] at @s run return run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=south]
