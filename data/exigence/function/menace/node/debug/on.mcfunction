# Show debug

## CONSTRAINTS
#   AS/AT menace node

#====================================================================================================

summon minecraft:block_display ~ ~1.5 ~ {Glowing:true,Tags:["DebugDisplay","MenaceDebugDisplay"],block_state:{Name:"purple_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-1.0f,-0.3f],scale:[0.6f,1.0f,0.6f]}\
,CustomName:{text:"MenaceNode",color:"dark_purple"},CustomNameVisible:true}

# Set team
team join Menace @n[type=minecraft:block_display,tag=MenaceDebugDisplay,distance=..3]

# Summon debug displays
execute if entity @s[tag=RavagerBlacklist] run function exigence:menace/node/debug/summon_ravager_blacklist_display
execute if entity @s[tag=CreakingBlacklist] run function exigence:menace/node/debug/summon_creaking_blacklist_display
execute if entity @s[tag=VoidShopBlacklist] run function exigence:menace/node/debug/summon_void_shop_blacklist_display
function exigence:menace/node/debug/summon_triggered_display
