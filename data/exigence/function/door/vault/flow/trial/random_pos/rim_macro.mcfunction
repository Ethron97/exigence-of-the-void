# Called by random_pos/new_pos

## CONSTRAINTS
#   AS center marker

## INPUT
#   INT RotA - Rotation from center

#=====================================================================================================

# DEBUG
#$say Moving marker, $(RotA)

# Teleport center marker to face new rotation
$execute at @s run tp @s ~ ~ ~ ~$(RotA) ~

# Teleport A to first marker position
execute at @s positioned ^ ^ ^6.5 run tp @e[type=minecraft:marker,tag=FlowPosA] ~ ~ ~

# Rotate A to be facing towards the center
execute as @e[type=minecraft:marker,tag=FlowPosA] at @s facing entity @e[type=marker,tag=FlowCenter,limit=1] eyes rotated ~ ~ run tp @s ~ ~ ~ ~ ~
