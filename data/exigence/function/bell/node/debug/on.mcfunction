# Show debug

## CONSTRAINTS
#   AS/AT bell node

#====================================================================================================

summon minecraft:block_display ~ ~1.5 ~ {Glowing:true,Tags:["DebugDisplay","BellDebugDisplay"],block_state:{Name:"yellow_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-1.0f,-0.3f],scale:[0.6f,1.0f,0.6f]}\
,CustomName:{text:"BellNode",color:"yellow"},CustomNameVisible:true}

# Set team
team join Special @n[type=minecraft:block_display,tag=BellDebugDisplay,distance=..3]
