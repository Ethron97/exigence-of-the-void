# Controls ambience around wards etc

#==============================================================================================================

# Ambience around wards
execute at @e[type=minecraft:interaction,tag=Crystal] if score SecondsCooldown TickCounter matches 3 run playsound minecraft:block.conduit.ambient.short ambient @a ~ ~ ~ 2 1

# Particle
execute at @e[type=minecraft:interaction,tag=Crystal] if entity @a[tag=ActivePlayer,distance=..32] run particle enchant ~ ~1.5 ~ 0 0 0 1 1

# If any player is holding a ward, glow corresponding
execute if items entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_emerald"]}] as @e[type=item_display,tag=CrystalDisplay,tag=Emerald] run data modify entity @s Glowing set value 1b
execute if items entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_sapphire"]}] as @e[type=item_display,tag=CrystalDisplay,tag=Sapphire] run data modify entity @s Glowing set value 1b
execute if items entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_ruby"]}] as @e[type=item_display,tag=CrystalDisplay,tag=Ruby] run data modify entity @s Glowing set value 1b
execute if items entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_topaz"]}] as @e[type=item_display,tag=CrystalDisplay,tag=Topaz] run data modify entity @s Glowing set value 1b
execute if items entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_amethyst"]}] as @e[type=item_display,tag=CrystalDisplay,tag=Amethyst] run data modify entity @s Glowing set value 1b

execute unless items entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_emerald"]}] as @e[type=item_display,tag=CrystalDisplay,tag=Emerald] run data modify entity @s Glowing set value 0b
execute unless items entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_sapphire"]}] as @e[type=item_display,tag=CrystalDisplay,tag=Sapphire] run data modify entity @s Glowing set value 0b
execute unless items entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_ruby"]}] as @e[type=item_display,tag=CrystalDisplay,tag=Ruby] run data modify entity @s Glowing set value 0b
execute unless items entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_topaz"]}] as @e[type=item_display,tag=CrystalDisplay,tag=Topaz] run data modify entity @s Glowing set value 0b
execute unless items entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_amethyst"]}] as @e[type=item_display,tag=CrystalDisplay,tag=Amethyst] run data modify entity @s Glowing set value 0b

# Crytal ward animation
execute if score SecondsCooldown TickCounter matches 1 as @e[type=item_display,tag=CrystalDisplay] at @s if entity @a[tag=ActivePlayer,distance=..24] run function exigence:game/other/wards/crystal/animate/new_frame
