# Called from handle_interact if the player is holding resonance

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) Try damage

# Play sound if no match
## SWITCH
execute if entity @s[tag=Emerald] unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_emerald"]}|custom_model_data={"strings":["resonance_universal"]}] at @s run return run playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 1
execute if entity @s[tag=Sapphire] unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_sapphire"]}|custom_model_data={"strings":["resonance_universal"]}] at @s run return run playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 1
execute if entity @s[tag=Ruby] unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_ruby"]}|custom_model_data={"strings":["resonance_universal"]}] at @s run return run playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 1
execute if entity @s[tag=Topaz] unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_topaz"]}|custom_model_data={"strings":["resonance_universal"]}] at @s run return run playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 1
execute if entity @s[tag=Amethyst] unless items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_amethyst"]}|custom_model_data={"strings":["resonance_universal"]}] at @s run return run playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 1

# Damage if match
## SWITCH
execute if entity @s[tag=Emerald] if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_emerald"]}|custom_model_data={"strings":["resonance_universal"]}] run return run function exigence:game/other/wards/crystal/damage/emerald
execute if entity @s[tag=Sapphire] if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_sapphire"]}|custom_model_data={"strings":["resonance_universal"]}] run return run function exigence:game/other/wards/crystal/damage/sapphire
execute if entity @s[tag=Ruby] if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_ruby"]}|custom_model_data={"strings":["resonance_universal"]}] run return run function exigence:game/other/wards/crystal/damage/ruby
execute if entity @s[tag=Topaz] if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_topaz"]}|custom_model_data={"strings":["resonance_universal"]}] run return run function exigence:game/other/wards/crystal/damage/topaz
execute if entity @s[tag=Amethyst] if items entity @a[tag=Crystaling] weapon.mainhand #exigence:resonance[custom_model_data={"strings":["resonance_amethyst"]}|custom_model_data={"strings":["resonance_universal"]}] run return run function exigence:game/other/wards/crystal/damage/amethyst
