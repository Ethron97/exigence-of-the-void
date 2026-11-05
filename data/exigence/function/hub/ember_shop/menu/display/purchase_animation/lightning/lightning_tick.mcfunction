# Lightning tick

## CONSTRAINTS
#   AS lightning segment

#====================================================================================================

execute unless score @s Random matches -10..100 store result score @s Random run data get entity @s interpolation_duration

scoreboard players remove @s Random 1

# If has tag, run interpolation function
execute if entity @s[tag=lightning_pending_frame_b] run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/private/call_interpolation_function with entity @s data.custom_data

# If origin segment, particle at anchor
execute if entity @s[tag=lightning_origin] at @s run particle minecraft:electric_spark ~-0.05 ~ ~

# If terminating segment, particle based on data
execute if entity @s[tag=lightning_end] at @s positioned ~-0.05 ~ ~ run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/private/call_particle_function with entity @s data.custom_data