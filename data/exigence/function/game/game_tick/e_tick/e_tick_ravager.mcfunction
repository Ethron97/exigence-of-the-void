# Tick on all ravagers

## CONSTRAINTS
#   AS/AT ravager

#====================================================================================================

# Main type tick
function exigence:enemy/ravager/e_tick

# Glow tick
execute if score @s game.entity.glow_remaining matches 1.. run function exigence:game/game_tick/e_tick/item/glow_tick

execute if entity @s[tag=DragonBreath] run particle dragon_breath ~ ~1.3 ~ 0.7 0.4 0.7 0 1

execute if score @s game.enemy.stun_timer matches 1.. run function exigence:cards/synaptic_shock/private/stun_tick