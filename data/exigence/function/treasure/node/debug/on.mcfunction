# Show debug

## CONSTRAINTS
#   AS/AT treasure node

#====================================================================================================

summon minecraft:block_display ~ ~1.5 ~ {Glowing:true,Tags:["DebugDisplay","TreasureDebugDisplay"],block_state:{Name:"orange_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-1.0f,-0.3f],scale:[0.6f,1.0f,0.6f]}\
,CustomName:{text:"TreasureNode-Walk",color:"gold"},CustomNameVisible:true}

# Set name from type
execute if entity @s[tag=TreasureNodeBox] run data modify entity @n[type=minecraft:block_display,tag=TreasureDebugDisplay,distance=..3] CustomName set value {text:"TreasureNode-Box",color:"gold"}

# Set team
team join Treasure @n[type=minecraft:block_display,tag=TreasureDebugDisplay,distance=..3]

# Create bb
execute if entity @s[tag=TreasureNodeBox] run function exigence:treasure/node/debug/create_bb

# Summon debug displays
execute if entity @s[tag=KeyBlacklist] run function exigence:treasure/node/debug/summon_key_blacklist_display
execute if entity @s[tag=FlameBlacklist] run function exigence:treasure/node/debug/summon_flame_blacklist_display
function exigence:treasure/node/debug/summon_drop_tries_display
