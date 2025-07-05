# Summon new Ruby shard drop within the dungeon

## CONSTRAINTS
#   AT location

#=========================================================================================================

# Summon a new resonance with tag "new resonance"
summon minecraft:item ~ ~ ~ {Tags:["NewResonance","Resonance","ResonanceRuby","Treasure"],Item:{id:"minecraft:amethyst_shard",count:1,components:{\
"minecraft:max_stack_size":1,"minecraft:custom_model_data":{"strings":["resonance_ruby"]}\
,"minecraft:custom_name":[{text:"🌌 Ruby Shard 🌌",color:"dark_red",italic:false}]\
,"minecraft:lore":[\
[{text:"🍪 Treasure ",color:"gold",italic:false},{text:"(Transient)",color:"dark_gray",italic:false}]\
,[{text:"",color:"gray"}]\
,[{text:"Can damage the Ruby Ward",color:"gray",italic:false}]\
,[{text:"",color:"gray"}]\
,[{text:"Hold to illuminate the Ruby Ward",color:"dark_gray",italic:false}]\
]}}}

# Add to scoreboard team (for glow color)
team join Enemy @e[type=minecraft:item,tag=NewResonance]

# Store object level
scoreboard players operation #compare ObjectLevel = @s ObjectLevel

# Handle common resonance function (removes NewResonance tag)
execute as @e[type=minecraft:item,tag=NewResonance] at @s run function exigence:game/other/wards/shard/shard_data
