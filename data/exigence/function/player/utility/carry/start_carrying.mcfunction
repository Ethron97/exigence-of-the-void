# Called when player starts carrying an NPC

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Start carrying

# This just lets players "head hit" basically...
#attribute @s minecraft:gravity modifier add exigence:carrying 1.5 add_multiplied_base

attribute @s fall_damage_multiplier modifier add exigence:carrying 2 add_multiplied_base
attribute @s minecraft:movement_speed modifier add exigence:carrying -0.3 add_multiplied_base
tag @s add Carrying