# Tick that only gets called when player is in the final tutorial section

## CONSTRAINTS
#   AS/AT tutorial exit node

#====================================================================================================

## PORTAL
# Ambient particles
execute if entity @a[tag=Tutorial,distance=..32] run particle minecraft:dust_color_transition{from_color:[0.3f,0.2f,1.0f],scale:1.0f,to_color:[0.88f,0.26f,1.0f]} ~ ~2 ~ 0.6 1.5 0.6 0.01 3
# Ambient portal sound controller
scoreboard players remove @s game.entity.ambient_noise_cooldown 1
execute if score @s game.entity.ambient_noise_cooldown matches ..0 at @s run playsound minecraft:block.portal.ambient ambient @p[tag=Tutorial,distance=..32] ~ ~ ~ 2 0.8
execute if score @s game.entity.ambient_noise_cooldown matches ..0 store result score @s game.entity.ambient_noise_cooldown run random value 160..280
