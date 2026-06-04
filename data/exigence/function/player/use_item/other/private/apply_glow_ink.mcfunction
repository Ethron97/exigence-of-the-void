# Apply glow ink to an entity

## CONSTRAINTS
#   AS glowable entity

#====================================================================================================

scoreboard players set @s game.entity.glow_remaining 999999
tag @s add GlowInked
effect give @s glowing infinite 0 true