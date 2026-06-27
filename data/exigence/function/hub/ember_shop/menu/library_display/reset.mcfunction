# Undiscard so it can be displayed again

## CONSTRAINTS
#   AS library display (item display)

#====================================================================================================

tag @s remove Discarded
tag @s remove Displaying

data modify entity @s Glowing set value false
team leave @s