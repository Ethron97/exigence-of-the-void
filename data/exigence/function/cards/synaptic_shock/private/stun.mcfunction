# Stun an enemy

## CONSTRAINTS
#   AS Enemy

#====================================================================================================

# Set no ai
data modify entity @s[type=!minecraft:warden] NoAI set value true
attribute @s[type=minecraft:warden] movement_speed modifier add exigence:stun -0.5 add_multiplied_base
tag @s add ETICK

# Set score
scoreboard players set @s game.enemy.stun_timer 600

# Playsound
execute at @s run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1

# Particle
execute at @s run particle minecraft:electric_spark ~ ~1.3 ~ 1 1 1 0.1 20
