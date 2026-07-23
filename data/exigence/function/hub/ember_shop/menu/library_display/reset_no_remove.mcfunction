# Undiscard so it can be displayed again
#   Called when a card gets purchased

## CONSTRAINTS
#   AS library display (item display)

#====================================================================================================

tag @s remove Discarded
tag @s remove ChosenCard

data modify entity @s Glowing set value false
team leave @s
