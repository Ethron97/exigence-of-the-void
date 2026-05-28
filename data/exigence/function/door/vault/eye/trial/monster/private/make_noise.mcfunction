# Make noise
#   Called when summoned and sometimes when turn

## CONSTRAINTS
#   AS monster

#====================================================================================================

execute if entity @s[type=minecraft:husk] at @s run playsound minecraft:entity.husk.ambient hostile @a[tag=TrialSounds_Eye] ~ ~ ~ 1 1
execute if entity @s[type=minecraft:silverfish] at @s run playsound minecraft:entity.silverfish.ambient hostile @a[tag=TrialSounds_Eye] ~ ~ ~ 1 1
execute if entity @s[type=minecraft:endermite] at @s run playsound minecraft:entity.endermite.ambient hostile @a[tag=TrialSounds_Eye] ~ ~ ~ 1 1