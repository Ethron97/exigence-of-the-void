say [Increase max Aqua by 1 if this is the first copy of this card, 2 if second, 3 if third]

# FUNCTIONALITY
# Add tag
tag @s add MindOfDivinity

# Increase score for each card with that tag
execute as @e[type=armor_stand,tag=Card,tag=MindOfDivinity] run scoreboard players add MaxAqua Resources 1
