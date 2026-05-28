# Attribute data to newly summoned entity

## CONSTRAINTS
#   AS black skull

#====================================================================================================

#   Make sure pitch is 0
data modify entity @s Rotation[1] set value 0.0f

# Playsound
execute at @s run playsound minecraft:entity.wither.shoot hostile @a[tag=TrialSounds_Dune] ~ ~ ~ 1 1

# Initialize cooldown score
scoreboard players set @s trial.object.timer 30

# Join team
#team join Enemy @s
#data modify entity @s Glowing set value true

# Remove local tag
tag @s remove NewSkull
