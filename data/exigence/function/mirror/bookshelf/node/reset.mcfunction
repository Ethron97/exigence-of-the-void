# Reset bookshelf

## CONSTRAINTS
#   AS bookshelf node

#====================================================================================================

# Reset tag
tag @s remove Active

# Reset bookshelves
## SWITCH
execute if entity @s[tag=FacingEast] at @s run return run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=east]
execute if entity @s[tag=FacingWest] at @s run return run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=west]
execute if entity @s[tag=FacingNorth] at @s run return run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=north]
execute if entity @s[tag=FacingSouth] at @s run return run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=south]
