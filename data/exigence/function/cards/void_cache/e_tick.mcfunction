# Called every second if at least one void cache exists

## CONSTRAINTS
#   AS/AT void cache

#====================================================================================================

# Return if not second
execute unless score seconds.cooldown tick_counter matches 10 run return 0
#----------------------------------------------------------------------------------------------------

# Handle endermite spawning
scoreboard players remove endermite.spawn.cooldown tick_counter 1
execute if score endermite.spawn.cooldown tick_counter matches ..0 run function exigence:cards/void_cache/private/spawn_endermite
execute if score endermite.spawn.cooldown tick_counter matches ..0 run scoreboard players set endermite.spawn.cooldown tick_counter 30

# Particles
particle dragon_breath ~ ~1 ~ 0.3 1 0.3 0.05 5
