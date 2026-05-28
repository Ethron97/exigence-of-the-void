# Called by new_pizza; Macro with rotation vectors to position first pizza marker

## CONSTRAINTS
#   AS center marker

## INPUT
#   INT RotA - Rotation from center
#   INT RotB - Reflected rotation back across chamber

#====================================================================================================

# DEBUG
$execute if score toggle.trial debug matches 1 if score debug.level debug matches 4.. run say (D4 Trial) Moving markers, $(RotA) $(RotB)

# Teleport center marker to face new rotation
$execute at @s run tp @s ~ ~ ~ ~$(RotA) ~

# Teleport A to first marker position
execute at @s positioned ^ ^ ^6.5 run tp @e[type=minecraft:marker,tag=PizzaA,distance=..24] ~ ~ ~

# Rotate A to be facing towards second marker position, +-the second random arc
$execute as @e[type=minecraft:marker,tag=PizzaA,distance=..24] at @s facing entity @e[type=minecraft:marker,tag=BoltThrower,distance=..24,limit=1] eyes rotated ~$(RotB) ~ run tp @s ~ ~$(height) ~ ~ ~
