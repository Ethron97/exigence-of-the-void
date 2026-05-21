# Load info from primary profile node

## CONSTRAINTS
#   AS player

## OUTPUT
#   Lots of player modifier scores

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) Load modifiers from player items

execute as @a[tag=Predungeon] run function exigence:game/load/modifiers/load_modifiers_0
execute as @a[tag=Predungeon] run function exigence:game/load/modifiers/load_modifiers_a
execute as @a[tag=Predungeon] run function exigence:game/load/modifiers/load_modifiers_b