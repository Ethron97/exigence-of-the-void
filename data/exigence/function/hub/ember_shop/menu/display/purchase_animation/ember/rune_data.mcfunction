# Finish rune data

## CONSTRAINTS
#   AS new rune

#====================================================================================================

# Set random rune letter
function exigence:hub/ember_shop/menu/display/purchase_animation/ember/set_random_rune_letter

data modify entity @s teleport_duration set value 3

# Set teleport-up-distance (10000 = 1.0000)
#   initial value = blocks (1 - rate of decay)
#scoreboard players set @s Random 15000
execute store result score @s Random run random value 15000..20000

# Randomize target coordinates
execute store result entity @s item.components."minecraft:custom_data".target_x double 0.1 run random value 490..500
execute store result entity @s item.components."minecraft:custom_data".target_y double 0.1 run random value 2120..2150
execute store result entity @s item.components."minecraft:custom_data".target_z double 0.1 run random value -20..30

#execute store result entity @s item.components."minecraft:custom_data".rot_a double 0.01 run random value 50..100
#execute store result entity @s item.components."minecraft:custom_data".rot_b double 0.01 run random value 50..100

# Randomize rotation
execute store result entity @s Rotation[0] float 1.0 run random value -180..180

# Remove local tag
tag @s remove NewRune