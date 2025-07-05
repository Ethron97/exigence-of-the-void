# called by setup_hanndle

## CONSTRAINTS
#   AS ItemDisplay (NewRune)

#========================================================================================================

# Add this door tag
tag @s add Door3

# Rotate runes to face the normal
data modify entity @s Rotation[0] set from entity @e[type=item_display,tag=Door3Handle,limit=1] Rotation[0]
execute at @s run rotate @s ~-90 ~

# Remove local tag from previous function
tag @s remove NewRune
