# Reset tag
tag @s remove Active

# Reset bookshelves
execute as @s[tag=FacingEast] at @s run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=east]
execute as @s[tag=FacingWest] at @s run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=west]
execute as @s[tag=FacingNorth] at @s run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=north]
execute as @s[tag=FacingSouth] at @s run setblock ~ ~ ~ minecraft:chiseled_bookshelf[facing=south]
