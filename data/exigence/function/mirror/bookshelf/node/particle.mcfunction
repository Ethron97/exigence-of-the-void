# Summon particle based on bookshelf direction

## CONSTRAINTS
#   AS/AT bookshelf node

#====================================================================================================

# Summon particle if there are any items still in the bookshelf
execute if entity @s[tag=FacingEast] run return run execute align xyz positioned ~0.5 ~0.5 ~0.5 if items block ~ ~ ~ container.* * run particle minecraft:glow ~0.8 ~ ~ 0.2 0.2 0.2 0 1
execute if entity @s[tag=FacingWest] run return run execute align xyz positioned ~0.5 ~0.5 ~0.5 if items block ~ ~ ~ container.* * run particle minecraft:glow ~-0.8 ~ ~ 0.2 0.2 0.2 0 1
execute if entity @s[tag=FacingNorth] run return run execute align xyz positioned ~0.5 ~0.5 ~0.5 if items block ~ ~ ~ container.* * run particle minecraft:glow ~ ~ ~-0.8 0.2 0.2 0.2 0 1
execute if entity @s[tag=FacingSouth] run return run execute align xyz positioned ~0.5 ~0.5 ~0.5 if items block ~ ~ ~ container.* * run particle minecraft:glow ~ ~ ~0.8 0.2 0.2 0.2 0 1
