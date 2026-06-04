# Called by ../dragon_breath on enemy

## CONSTRAINTS
#   AS/AT Enemy entity

#====================================================================================================

execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3) Apply dragon breath

# Count how many total entities have DragonBreath
scoreboard players set #temp Temp 0
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=#exigence:dragon_breath,team=Enemy,tag=DragonBreath] run scoreboard players add #temp Temp 1

# If number of dragon breathed >= max, unglow the furthest one from this entity
execute if score #temp Temp >= mod.max_dragon_breath game.modifiers as @e[type=#exigence:dragon_breath,team=Enemy,tag=DragonBreath,distance=..300,sort=furthest,limit=1] run function exigence:player/modifiers/private/unapply_dragon_breath

# Add tag to mark this enemy
tag @s add DragonBreath

# Playsound
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1

# Particles
particle dragon_breath ~ ~1.3 ~ 0.7 0.4 0.7 0 50

# If they were glow inked, don't bother glowing
execute if entity @s[tag=GlowInked] run return 0
#----------------------------------------------------------------------------------------------------
# Set glow
scoreboard players set @s game.entity.glow_remaining 999999
# For blazes, witches, witherskeletons
effect give @s[type=!warden,type=!ravager] glowing infinite 0 true