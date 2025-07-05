# Called by enemy_effect_tick

## CONSTRAINTS
#   AS Enemy
#       Scores: EnemyStunCooldown 1..

#====================================================================================================

# Remove 1 score
scoreboard players remove @s EnemyStunCooldown 1

# If ..1, re-ai
#   (Unless they are still eating a cookie)
execute if score @s EnemyStunCooldown matches ..1 unless entity @s[type=ravager,scores={EatingCookie=2..}] run data modify entity @s NoAI set value false

# Particle
execute at @s[type=warden] positioned ~ ~4.2 ~ run function exigence:cards/synaptic_shock/private/particle
execute at @s[type=!warden] positioned ~ ~2.2 ~ run function exigence:cards/synaptic_shock/private/particle
