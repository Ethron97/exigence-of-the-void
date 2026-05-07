# Controls ambience around wards etc

#====================================================================================================

# If any player is holding a ward, glow corresponding
execute if items entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_emerald"]}] as @e[type=minecraft:item_display,tag=CrystalDisplay,tag=Emerald] run data modify entity @s Glowing set value 1b
execute if items entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_sapphire"]}] as @e[type=minecraft:item_display,tag=CrystalDisplay,tag=Sapphire] run data modify entity @s Glowing set value 1b
execute if items entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_ruby"]}] as @e[type=minecraft:item_display,tag=CrystalDisplay,tag=Ruby] run data modify entity @s Glowing set value 1b
execute if items entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_topaz"]}] as @e[type=minecraft:item_display,tag=CrystalDisplay,tag=Topaz] run data modify entity @s Glowing set value 1b
execute if items entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_amethyst"]}] as @e[type=minecraft:item_display,tag=CrystalDisplay,tag=Amethyst] run data modify entity @s Glowing set value 1b

execute unless items entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_emerald"]}] as @e[type=minecraft:item_display,tag=CrystalDisplay,tag=Emerald] run data modify entity @s Glowing set value 0b
execute unless items entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_sapphire"]}] as @e[type=minecraft:item_display,tag=CrystalDisplay,tag=Sapphire] run data modify entity @s Glowing set value 0b
execute unless items entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_ruby"]}] as @e[type=minecraft:item_display,tag=CrystalDisplay,tag=Ruby] run data modify entity @s Glowing set value 0b
execute unless items entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_topaz"]}] as @e[type=minecraft:item_display,tag=CrystalDisplay,tag=Topaz] run data modify entity @s Glowing set value 0b
execute unless items entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] weapon.mainhand minecraft:amethyst_shard[custom_model_data={"strings":["resonance_amethyst"]}] as @e[type=minecraft:item_display,tag=CrystalDisplay,tag=Amethyst] run data modify entity @s Glowing set value 0b
