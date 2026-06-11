# Reduce the durability of each slot

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Try damage all armor

execute if items entity @s armor.head * run function exigence:player/utility/armor/damage/helmet
execute if items entity @s armor.chest * run function exigence:player/utility/armor/damage/chestplate
execute if items entity @s armor.legs * run function exigence:player/utility/armor/damage/leggings
execute if items entity @s armor.feet * run function exigence:player/utility/armor/damage/boots