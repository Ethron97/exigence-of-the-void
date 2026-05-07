# when the final damage is dealt to a crystal

## CONSTRAINTS
#   AS crystal

#====================================================================================================

# DEBUG
execute if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) Break

# Playsound
execute at @s run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 1000 1

# Increase hazard on level 4 by 1
function exigence:hazard/proc_hazard {level:4,amount:1,type:"other"}

# If all ward scores are 0, grant players achivement
scoreboard players operation #total game.story.wards = ward.emerald game.story.wards
scoreboard players operation #total game.story.wards += ward.sapphire game.story.wards
scoreboard players operation #total game.story.wards += ward.ruby game.story.wards
scoreboard players operation #total game.story.wards += ward.topaz game.story.wards
scoreboard players operation #total game.story.wards += ward.amethyst game.story.wards

execute if score #total game.story.wards matches 0 if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) ALL WARDS BROKEN
execute if score #total game.story.wards matches 0 as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'destroy_crystals'}

# Remove this crystal
function exigence:game/other/wards/crystal/remove

# Kill all corresponding items
execute if entity @s[tag=Emerald] run kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=ResonanceEmerald]
execute if entity @s[tag=Sapphire] run kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=ResonanceSapphire]
execute if entity @s[tag=Ruby] run kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=ResonanceRuby]
execute if entity @s[tag=Topaz] run kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=ResonanceTopaz]
execute if entity @s[tag=Amethyst] run kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=ResonanceAmethyst]

execute if entity @s[tag=Emerald] run clear @a[tag=ActivePlayer] minecraft:amethyst_shard[custom_model_data={"strings":["resonance_emerald"]}]
execute if entity @s[tag=Sapphire] run clear @a[tag=ActivePlayer] minecraft:amethyst_shard[custom_model_data={"strings":["resonance_sapphire"]}]
execute if entity @s[tag=Ruby] run clear @a[tag=ActivePlayer] minecraft:amethyst_shard[custom_model_data={"strings":["resonance_ruby"]}]
execute if entity @s[tag=Topaz] run clear @a[tag=ActivePlayer] minecraft:amethyst_shard[custom_model_data={"strings":["resonance_topaz"]}]
execute if entity @s[tag=Amethyst] run clear @a[tag=ActivePlayer] minecraft:amethyst_shard[custom_model_data={"strings":["resonance_amethyst"]}]
