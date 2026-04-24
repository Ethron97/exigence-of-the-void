# Called after any blazes get summoned in the dungeon.

## CONSTRAINTS
#   AS Blaze

#====================================================================================================

# Add tag
tag @s add Setuped

# Assign team
team join Enemy @s

# Give slowness
effect give @s minecraft:slowness infinite 200 true

# Knockback resistance
attribute @s knockback_resistance base set 10.0

# Glow enemies if debig
execute if data storage exigence:debug {enemy:1} run effect give @s minecraft:glowing infinite 0 true

# Other setup
function exigence:enemy/spawn_enemies/setup_enemy