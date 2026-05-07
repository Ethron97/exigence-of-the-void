# Called by max_menace_tick, on RavagerAggroCooldownCurrent=0

#====================================================================================================

execute if score toggle.menace debug matches 1 if score debug.level debug matches 3.. run say (D3) Aggro all enemies

execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:vex] run function exigence:enemy/aggro_enemy
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:ravager] if function exigence:misc/entity/on_active run function exigence:enemy/aggro_enemy
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:wither_skeleton] if function exigence:misc/entity/on_active run function exigence:enemy/aggro_enemy
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:witch] if function exigence:misc/entity/on_active run function exigence:enemy/aggro_enemy

# Reset cooldown
scoreboard players operation ravager.aggro.cooldown tick_counter = #RavagerAggroCooldownLimit tick_counter
