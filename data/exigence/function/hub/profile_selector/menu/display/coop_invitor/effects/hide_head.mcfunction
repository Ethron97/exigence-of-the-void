# Move head out of view

## CONSTRAINTS
#   AS head display
#   AT slot display

#=============================================================================================================

# Remove tag
tag @s remove DisplayingHead
tag @s add HidingHead

# Move head behind block
tp @s ~ ~1.5 ~-0.5

# Remove any detail displays
# TODO
