# Called by max_menace_tick, on RavagerAggroCooldownCurrent=0

#=====================================================================================================

execute as @e[type=minecraft:vex] run function exigence:enemy/aggro_enemy
execute as @e[type=minecraft:ravager] if function exigence:misc/node/on_active run function exigence:enemy/aggro_enemy
execute as @e[type=minecraft:wither_skeleton] if function exigence:misc/node/on_active run function exigence:enemy/aggro_enemy
execute as @e[type=minecraft:witch] if function exigence:misc/node/on_active run function exigence:enemy/aggro_enemy

# Reset cooldown
scoreboard players operation ravager.aggro.cooldown tick_counter = #RavagerAggroCooldownLimit tick_counter
