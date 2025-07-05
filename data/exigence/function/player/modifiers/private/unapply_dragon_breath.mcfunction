# Called by ../apply_dragon_breath on furthest enemy that has dragonbreath, if at max capacity

## CONSTRAINTS
#   AS Enemy entity

#=============================================================================================================

# DEBUG
#say Unapply dragon breath

tag @s remove DragonBreath
scoreboard players set @s GlowRemaining 0
effect clear @s glowing
