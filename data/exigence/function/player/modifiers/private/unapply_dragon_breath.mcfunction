# Called by ../apply_dragon_breath on furthest enemy that has dragonbreath, if at max capacity

## CONSTRAINTS
#   AS Enemy entity

#====================================================================================================

# DEBUG
execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3) Unapply dragon breath

tag @s remove DragonBreath
scoreboard players set @s game.entity.glow_remaining 0
effect clear @s glowing
