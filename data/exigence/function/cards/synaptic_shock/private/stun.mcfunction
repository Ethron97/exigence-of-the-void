# Stun an enemy

## CONSTRAINTS
#   AS Enemy

#====================================================================================================

# Set no ai
data modify entity @s NoAI set value true

# Set score
scoreboard players set @s EnemyStunCooldown 600

# Playsound
execute at @s run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1

# Particle
execute at @s run particle minecraft:electric_spark ~ ~1.3 ~ 1 1 1 0.1 20
