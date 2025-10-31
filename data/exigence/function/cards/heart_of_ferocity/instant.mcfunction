say [Increase max Red by 1 if this is the first copy of this card, 2 if second, 3 if third]

# FUNCTIONALITY
# Add tag
tag @s add HeartOfFerocity

# Increase score for each card with that tag
execute as @e[type=armor_stand,tag=Card,tag=HeartOfFerocity] run scoreboard players add Max.Red game.resources 1
