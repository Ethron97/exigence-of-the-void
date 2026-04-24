# Show debug

## CONSTRAINTS
#   AS/AT variance node

#====================================================================================================

summon minecraft:block_display ~ ~1.5 ~ {Glowing:true,Tags:["DebugDisplay","VarianceDebugDisplay"],block_state:{Name:"gray_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-1.0f,-0.3f],scale:[0.6f,1.0f,0.6f]}\
,CustomName:{text:"VarianceNode",color:"gray"},CustomNameVisible:true}

# Set team
team join Variance @n[type=minecraft:block_display,tag=VarianceDebugDisplay,distance=..3]
