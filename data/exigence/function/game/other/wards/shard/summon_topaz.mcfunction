# Summon new Topaz shard drop within the dungeon

## CONSTRAINTS
#   AT location

#=========================================================================================================

# Summon a new resonance with tag "new resonance"
summon minecraft:item ~ ~ ~ {Tags:["NewResonance","Resonance","ResonanceTopaz","Treasure"],Item:{id:"minecraft:amethyst_shard",count:1,components:{\
"minecraft:max_stack_size":1,"minecraft:custom_model_data":{"strings":["resonance_topaz"]}\
,"minecraft:custom_name":[{text:"🌌 Topaz Shard 🌌",color:"yellow",italic:false}]\
,"minecraft:lore":[\
[{text:"🍪 Treasure ",color:"gold",italic:false},{text:"(Transient)",color:"dark_gray",italic:false}]\
,[{text:"",color:"gray"}]\
,[{text:"Can damage the Topaz Ward",color:"gray",italic:false}]\
,[{text:"",color:"gray"}]\
,[{text:"Hold to illuminate the Topaz Ward",color:"dark_gray",italic:false}]\
]}}}

# Add to scoreboard team (for glow color)
team join Special @e[type=minecraft:item,tag=NewResonance]

# Store object level
scoreboard players operation #compare ObjectLevel = @s ObjectLevel

# Handle common resonance function (removes NewResonance tag)
execute as @e[type=minecraft:item,tag=NewResonance] at @s run function exigence:game/other/wards/shard/shard_data
