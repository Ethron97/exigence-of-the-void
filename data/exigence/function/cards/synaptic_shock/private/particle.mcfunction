# Stun particle
#   Called by stun_tick

## CONSTRAINTS
#   AT Enemy that is stunned

#====================================================================================================

execute if score seconds.cooldown tick_counter matches 0 run particle minecraft:electric_spark ~1.0 ~ ~0.0
execute if score seconds.cooldown tick_counter matches 1 run particle minecraft:electric_spark ~0.951 ~ ~0.309
execute if score seconds.cooldown tick_counter matches 2 run particle minecraft:electric_spark ~0.809 ~ ~0.588
execute if score seconds.cooldown tick_counter matches 3 run particle minecraft:electric_spark ~0.588 ~ ~0.809
execute if score seconds.cooldown tick_counter matches 4 run particle minecraft:electric_spark ~0.309 ~ ~0.951
execute if score seconds.cooldown tick_counter matches 5 run particle minecraft:electric_spark ~0.0 ~ ~1.0
execute if score seconds.cooldown tick_counter matches 6 run particle minecraft:electric_spark ~-0.309 ~ ~0.951
execute if score seconds.cooldown tick_counter matches 7 run particle minecraft:electric_spark ~-0.588 ~ ~0.809
execute if score seconds.cooldown tick_counter matches 8 run particle minecraft:electric_spark ~-0.809 ~ ~0.588
execute if score seconds.cooldown tick_counter matches 9 run particle minecraft:electric_spark ~-0.951 ~ ~0.309
execute if score seconds.cooldown tick_counter matches 10 run particle minecraft:electric_spark ~-1.0 ~ ~0.0
execute if score seconds.cooldown tick_counter matches 11 run particle minecraft:electric_spark ~-0.951 ~ ~-0.309
execute if score seconds.cooldown tick_counter matches 12 run particle minecraft:electric_spark ~-0.809 ~ ~-0.588
execute if score seconds.cooldown tick_counter matches 13 run particle minecraft:electric_spark ~-0.588 ~ ~-0.809
execute if score seconds.cooldown tick_counter matches 14 run particle minecraft:electric_spark ~-0.309 ~ ~-0.951
execute if score seconds.cooldown tick_counter matches 15 run particle minecraft:electric_spark ~-0.0 ~ ~-1.0
execute if score seconds.cooldown tick_counter matches 16 run particle minecraft:electric_spark ~0.309 ~ ~-0.951
execute if score seconds.cooldown tick_counter matches 17 run particle minecraft:electric_spark ~0.588 ~ ~-0.809
execute if score seconds.cooldown tick_counter matches 18 run particle minecraft:electric_spark ~0.809 ~ ~-0.588
execute if score seconds.cooldown tick_counter matches 19 run particle minecraft:electric_spark ~0.951 ~ ~-0.309
