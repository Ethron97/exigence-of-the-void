# Show debug

## CONSTRAINTS
#   AS/AT hazard node

#====================================================================================================

summon minecraft:block_display ~ ~1.5 ~ {Glowing:true,Tags:["DebugDisplay","HazardDebugDisplay"],block_state:{Name:"red_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-1.0f,-0.3f],scale:[0.6f,1.0f,0.6f]}\
,CustomName:{text:"HazardNode",color:"red"},CustomNameVisible:true}

# Set team
team join Hazard @n[type=minecraft:block_display,tag=HazardDebugDisplay,distance=..3]
