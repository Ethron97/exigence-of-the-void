# when the final damage is dealt to a crystal

## CONSTRAINTS
#   AS crystal

#=============================================================================================================

# DEBUG
#say Break

# Playsound
execute at @s run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 1000 1

# Increase hazard on level 4 by 1
function exigence:hazard/proc_hazard {level:4,amount:1,type:"Other"}

# If all ward scores are 0, grant players achivement
scoreboard players operation #total Wards = Emerald Wards
scoreboard players operation #total Wards += Sapphire Wards
scoreboard players operation #total Wards += Ruby Wards
scoreboard players operation #total Wards += Topaz Wards
scoreboard players operation #total Wards += Amethyst Wards

execute if score #total Wards matches 0 run say ALL WARDS BROKEN
execute if score #total Wards matches 0 run advancement grant @a[tag=ActivePlayer] only exigence:story/destroy_crystals

# Remove this crystal
function exigence:game/other/wards/crystal/remove

# Kill all corresponding items
execute if entity @s[tag=Emerald] run kill @e[type=item,tag=ResonanceEmerald]
execute if entity @s[tag=Sapphire] run kill @e[type=item,tag=ResonanceSapphire]
execute if entity @s[tag=Ruby] run kill @e[type=item,tag=ResonanceRuby]
execute if entity @s[tag=Topaz] run kill @e[type=item,tag=ResonanceTopaz]
execute if entity @s[tag=Amethyst] run kill @e[type=item,tag=ResonanceAmethyst]

execute if entity @s[tag=Emerald] run clear @a[tag=ActivePlayer] minecraft:amethyst_shard[custom_model_data={"strings":["resonance_emerald"]}]
execute if entity @s[tag=Sapphire] run clear @a[tag=ActivePlayer] minecraft:amethyst_shard[custom_model_data={"strings":["resonance_sapphire"]}]
execute if entity @s[tag=Ruby] run clear @a[tag=ActivePlayer] minecraft:amethyst_shard[custom_model_data={"strings":["resonance_ruby"]}]
execute if entity @s[tag=Topaz] run clear @a[tag=ActivePlayer] minecraft:amethyst_shard[custom_model_data={"strings":["resonance_topaz"]}]
execute if entity @s[tag=Amethyst] run clear @a[tag=ActivePlayer] minecraft:amethyst_shard[custom_model_data={"strings":["resonance_amethyst"]}]
