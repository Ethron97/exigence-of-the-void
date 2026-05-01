# Show debug

## CONSTRAINTS
#   AS/AT bookshelf node

#====================================================================================================

summon minecraft:block_display ~ ~0.5 ~ {Glowing:true,Tags:["DebugDisplay","BookshelfDebugDisplay"],block_state:{Name:"yellow_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.49f,-0.49f,-0.49f],scale:[0.98f,0.98f,0.98f]}\
,CustomName:{text:"BookshelfNode",color:"yellow"},CustomNameVisible:true}

# Set team
team join Special @n[type=minecraft:block_display,tag=BookshelfDebugDisplay,distance=..1]

# Summon Facing debug
function exigence:mirror/bookshelf/node/debug/summon_facing_display