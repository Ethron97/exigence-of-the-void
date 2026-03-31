# Reposnsible for enemy effects

execute as @e[type=ravager] run function exigence:enemy/ravager/tick
execute if score seconds.cooldown tick_counter matches 3 run execute as @e[type=warden] run function exigence:enemy/warden/tick

# If enemy is DragonBreathed, passive particle
#   Currently not ideal, as if two players are close then it double particles
execute at @a[scores={dead=0},tag=ActivePlayer] at @e[type=#exigence:glowable_enemies,tag=DragonBreath,distance=..16] run particle dragon_breath ~ ~1.3 ~ 0.7 0.4 0.7 0 1

# If stunned, particle
execute as @e[type=#exigence:enemy,scores={game.enemy.stun_timer=1..}] run function exigence:cards/synaptic_shock/private/stun_tick
