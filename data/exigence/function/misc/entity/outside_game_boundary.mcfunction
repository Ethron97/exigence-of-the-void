# Called by tick on entities outside the "game" boundary

## CONSTRAINTS
#   AS entity

#====================================================================================================

say I am outside the FULL game boundary

# If small fireball, kill

execute if entity @s[type=minecraft:small_fireball] run kill @s
execute if entity @s[type=minecraft:wind_charge] run kill @s
