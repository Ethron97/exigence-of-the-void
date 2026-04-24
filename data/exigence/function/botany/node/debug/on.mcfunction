# Show debug

## CONSTRAINTS
#   AS/AT berry node

#====================================================================================================

summon minecraft:block_display ~ ~1.5 ~ {Glowing:true,Tags:["DebugDisplay","BerryDebugDisplay"],block_state:{Name:"green_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-1.0f,-0.3f],scale:[0.6f,1.0f,0.6f]}\
,CustomName:{text:"BerryNode",color:"green"},CustomNameVisible:true}

# Set team
team join Botany @n[type=minecraft:block_display,tag=BerryDebugDisplay,distance=..3]
