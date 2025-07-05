# Ravager effect tick

## CONSTRAINTS
#   AS Ravager

#==================================================================================================================

# Decrease all ravager's lookee scores by 1, but slowly
execute if score SecondsCooldown TickCounter matches 5 run scoreboard players remove @s[scores={DetectThoughts=1..}] DetectThoughts 1
execute if score SecondsCooldown TickCounter matches 15 run scoreboard players remove @s[scores={DetectThoughts=1..}] DetectThoughts 1
# Ambient particles around ravagers with any DetectThoughts amounts
execute if score @s DetectThoughts matches 1.. at @s run particle minecraft:electric_spark ~ ~0.5 ~ 1 1 1 0 1


# Beastie Bite Check
execute if data storage exigence:dungeon {max_menace:0} at @s if entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:cookie"}}] run function exigence:enemy/beastie_bite/begin_eating
execute if score @s EatingCookie matches 1.. at @s run function exigence:enemy/beastie_bite/eat
# When eating cookie runs and they aren't pacified out, regain AI
#   Re-ai at 1 instead of 0 so we don't keep re-running this command each tick
execute if score @s EatingCookie matches 1 unless score @s EnemyStunCooldown matches 1.. run data merge entity @s {NoAI:false}


# Ambient noise cooldown
execute if score @s AmbientNoiseCooldown matches ..0 at @s run execute if entity @a[tag=ActivePlayer,distance=14..24] run playsound minecraft:entity.ravager.ambient hostile @a[tag=ActivePlayer] ~ ~ ~ 1.3 0.8
execute if score @s AmbientNoiseCooldown matches ..0 store result score @s AmbientNoiseCooldown run random value 70..180
scoreboard players remove @s AmbientNoiseCooldown 1

# Entangled
execute store result score @s Random run random value 1..2
execute if score @s Random matches 2 if entity @s[tag=Entangled] at @s run particle pale_oak_leaves ~ ~3 ~ 1 0.5 1 0.1 1

execute if score @s Random matches 2 if entity @s[tag=Kinesis] at @s run particle crit ~ ~2 ~ 0.5 0.5 0.5 0.1 1
