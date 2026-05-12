# Echo shard tick

## CONSTRAINTS
#   AS/AT echo shard (item)

#====================================================================================================

# Ambient particles around the Echo Shard
execute if score seconds.cooldown tick_counter matches 2 run particle minecraft:end_rod ~ ~0.5 ~ 0.25 0.15 0.25 0.001 1
execute if score seconds.cooldown tick_counter matches 12 run particle minecraft:end_rod ~ ~0.5 ~ 0.25 0.15 0.25 0.001 1
