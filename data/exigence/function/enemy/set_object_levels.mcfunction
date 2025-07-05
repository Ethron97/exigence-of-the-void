# Called 1 tick after/by spawn_enemies

#==================================================================================================================

execute as @e[type=#exigence:enemy] run function exigence:enemy/spawn_enemies/set_object_level
