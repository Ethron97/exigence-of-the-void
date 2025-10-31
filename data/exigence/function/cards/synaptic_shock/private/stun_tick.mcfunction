# Called by enemy_effect_tick

## CONSTRAINTS
#   AS Enemy
#       Scores: game.enemy.stun_timer 1..

#====================================================================================================

# Remove 1 score
scoreboard players remove @s game.enemy.stun_timer 1

# If ..1, re-ai
#   (Unless they are still eating a cookie)
execute if score @s game.enemy.stun_timer matches ..1 unless entity @s[type=ravager,scores={game.ravager.eating_cookie=2..}] run data modify entity @s NoAI set value false

# Particle
execute at @s[type=warden] positioned ~ ~4.2 ~ run function exigence:cards/synaptic_shock/private/particle
execute at @s[type=!warden] positioned ~ ~2.2 ~ run function exigence:cards/synaptic_shock/private/particle
