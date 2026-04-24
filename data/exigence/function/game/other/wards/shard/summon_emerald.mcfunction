# Summon new emerald shard drop within the dungeon
# Called by :treasure/node/drop_treasure

## CONSTRAINTS
#   AS treasure node
#   AT location

#====================================================================================================

# Summon a new resonance with tag "new resonance"
summon minecraft:item ~ ~ ~ {Tags:["NewResonance","Resonance","ResonanceEmerald","Treasure"],Item:{id:"minecraft:amethyst_shard",count:1,components:{\
"minecraft:max_stack_size":1,"minecraft:custom_model_data":{"strings":["resonance_emerald"]}\
,"minecraft:custom_name":[{text:"🌌 Emerald Shard 🌌",color:"green",italic:false}]\
,"minecraft:lore":[\
[{text:"🍪 Treasure ",color:"gold",italic:false},{text:"(Transient)",color:"dark_gray",italic:false}]\
,[{text:"",color:"gray"}]\
,[{text:"Can damage the Emerald Ward",color:"gray",italic:false}]\
,[{text:"",color:"gray"}]\
,[{text:"Hold to illuminate the Emerald Ward",color:"dark_gray",italic:false}]\
]}}}

# Add to scoreboard team (for glow color)
team join ActiveEcho @e[type=minecraft:item,tag=NewResonance]

# Store object level
scoreboard players operation #compare node.property.object_level = @s node.property.object_level

# Handle common resonance function (removes NewResonance tag)
execute as @e[type=minecraft:item,tag=NewResonance] at @s run function exigence:game/other/wards/shard/shard_data
