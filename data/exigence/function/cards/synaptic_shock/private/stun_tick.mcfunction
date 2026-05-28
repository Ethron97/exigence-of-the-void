# Called by enemy_effect_tick

## CONSTRAINTS
#   AS Enemy
#       Scores: game.enemy.stun_timer 1..

#====================================================================================================

# Remove 1 score
scoreboard players remove @s game.enemy.stun_timer 1

# If ..1, re-ai
#   (Unless they are still eating a cookie)
execute if score @s game.enemy.stun_timer matches ..1 unless entity @s[type=minecraft:ravager,scores={game.ravager.eating_cookie=2..}] run function exigence:cards/synaptic_shock/private/unstun

# Particle
execute at @s[type=minecraft:ravager] positioned ^ ^2.2 ^0.6 run return run function exigence:cards/synaptic_shock/private/particle
execute at @s[type=minecraft:warden,tag=L4] positioned ~ ~8.2 ~ run return run function exigence:cards/synaptic_shock/private/particle
execute at @s[type=minecraft:warden] positioned ~ ~4.2 ~ run return run function exigence:cards/synaptic_shock/private/particle
execute at @s positioned ~ ~2.2 ~ run function exigence:cards/synaptic_shock/private/particle
