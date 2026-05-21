# Manny

## CONSTRAINTS
#   AS mannequin

#====================================================================================================

# Switch between sneaking
execute if score seconds.cooldown tick_counter matches 1 run data modify entity @s pose set value 'crouching'
execute if score seconds.cooldown tick_counter matches 11 run data modify entity @s pose set value 'standing'

# Look at nearest player
rotate @s facing entity @p