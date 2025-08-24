## CONSTRAINTS
#   AS Vex (NewEyeball)

#=============================================================================================================

# Tweak attributes
attribute @s follow_range base set 200.0
attribute @s knockback_resistance base set 10.0

# Join enemy
team join Enemy @s

# Remove local tag
tag @s remove NewEyeball
