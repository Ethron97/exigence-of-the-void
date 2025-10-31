# Called from interaction

## CONSTRAINTS
#   AS Crystal interaction

# ===============================================================================================================

# DEBUG
#say Crystal handle

# Tag the player who interacted
execute on target run tag @s add Crystaling
execute on attacker run tag @s add Crystaling

# Fail sound
execute unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance at @s run playsound minecraft:block.netherite_block.hit block @a ~ ~ ~ 1 1
execute if entity @s[tag=Emerald] unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_emerald"]}|custom_model_data={"strings":["resonance_universal"]}] at @s run playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 1
execute if entity @s[tag=Sapphire] unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_sapphire"]}|custom_model_data={"strings":["resonance_universal"]}] at @s run playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 1
execute if entity @s[tag=Ruby] unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_ruby"]}|custom_model_data={"strings":["resonance_universal"]}] at @s run playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 1
execute if entity @s[tag=Topaz] unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_topaz"]}|custom_model_data={"strings":["resonance_universal"]}] at @s run playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 1
execute if entity @s[tag=Amethyst] unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_amethyst"]}|custom_model_data={"strings":["resonance_universal"]}] at @s run playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 1

# Call function based on if player is holding corresponding crystal
#   Use custom model number for switch
execute if entity @s[tag=Emerald] if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_emerald"]}|custom_model_data={"strings":["resonance_universal"]}] run function exigence:game/other/wards/crystal/damage {color:'emerald'}
execute if entity @s[tag=Sapphire] if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_sapphire"]}|custom_model_data={"strings":["resonance_universal"]}] run function exigence:game/other/wards/crystal/damage {color:'sapphire'}
execute if entity @s[tag=Ruby] if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_ruby"]}|custom_model_data={"strings":["resonance_universal"]}] run function exigence:game/other/wards/crystal/damage {color:'ruby'}
execute if entity @s[tag=Topaz] if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_topaz"]}|custom_model_data={"strings":["resonance_universal"]}] run function exigence:game/other/wards/crystal/damage {color:'topaz'}
execute if entity @s[tag=Amethyst] if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_amethyst"]}|custom_model_data={"strings":["resonance_universal"]}] run function exigence:game/other/wards/crystal/damage {color:'amethyst'}

# Clear tag
execute on target run tag @s remove Crystaling
execute on attacker run tag @s remove Crystaling
