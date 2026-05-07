# Called from interaction

## CONSTRAINTS
#   AS Crystal interaction

#====================================================================================================

# DEBUG
execute if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) Crystal handle

# Tag the player who interacted
execute on target run tag @s add Crystaling
execute on attacker run tag @s add Crystaling

# Fail sound
execute unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance at @s run playsound minecraft:block.netherite_block.hit block @a ~ ~ ~ 1 1
execute if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance at @s run function exigence:game/other/wards/crystal/try_damage

# Clear tag
execute on target run tag @s remove Crystaling
execute on attacker run tag @s remove Crystaling
