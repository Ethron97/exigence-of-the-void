# Ambient echo shard sounds
#   Call as Echo Shard

execute at @s if entity @a[tag=Tutorial,distance=..8] run playsound minecraft:block.amethyst_block.resonate neutral @a ~ ~ ~ 7 1.2
execute at @s if entity @a[tag=Tutorial,distance=8..16] run playsound minecraft:block.amethyst_block.resonate neutral @a ~ ~ ~ 7 1
# Reset cooldown
execute at @s if entity @a[tag=Tutorial,distance=..16] store result score @s AmbientNoiseCooldown run random value 20..35
execute at @s if entity @a[tag=Tutorial,distance=16..32] store result score @s AmbientNoiseCooldown run random value 35..55
execute at @s if entity @a[tag=Tutorial,distance=32..48] store result score @s AmbientNoiseCooldown run random value 55..80
execute at @s if entity @a[tag=Tutorial,distance=48..64] store result score @s AmbientNoiseCooldown run random value 80..100
execute at @s if entity @a[tag=Tutorial,distance=64..80] store result score @s AmbientNoiseCooldown run random value 100..125
execute at @s if entity @a[tag=Tutorial,distance=80..] store result score @s AmbientNoiseCooldown run random value 125..126