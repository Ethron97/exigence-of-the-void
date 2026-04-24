# Ambient noise

## CONSTRAINTS
#   AS/AT Ravager with ambient noise ..0

#====================================================================================================

# Playsound if player is near
execute if entity @a[tag=ActivePlayer,distance=14..24] run playsound minecraft:entity.ravager.ambient hostile @a ~ ~ ~ 1.3 0.8

# Reset cooldown
execute store result score @s game.entity.ambient_noise_cooldown run random value 70..180
