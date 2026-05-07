# Called from game tick e tick

## CONSTRAINTS
#   AS/AT crystal (interaction)

#====================================================================================================

# Particles
execute if entity @a[tag=ActivePlayer,distance=..32] run particle enchant ~ ~1.5 ~ 0 0 0 5 2

# Low-frequency functions
execute if score seconds.cooldown tick_counter matches 3 run function exigence:game/other/wards/crystal/e_tick_second