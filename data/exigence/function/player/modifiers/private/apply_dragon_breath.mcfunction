# Called by ../dragon_breath on enemy

## CONSTRAINTS
#   AS Enemy entity

#=============================================================================================================

# Count how many total entities have DragonBreath
scoreboard players set #temp Temp 0
execute as @e[type=#exigence:glowable_enemies,team=Enemy,tag=DragonBreath] run scoreboard players add #temp Temp 1

# If number of dragon breathed >= max, unglow the furthest one from this entity
execute if score #temp Temp >= MaxDragonBreath DungeonRun as @e[type=#exigence:glowable_enemies,team=Enemy,tag=DragonBreath,sort=furthest,limit=1] run function exigence:player/modifiers/private/unapply_dragon_breath

# Add tag to mark this enemy
tag @s add DragonBreath

# Set glow
scoreboard players set @s game.entity.glow_remaining 999999

# Playsound
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1

# Particles
particle dragon_breath ~ ~1.3 ~ 0.7 0.4 0.7 0 50
