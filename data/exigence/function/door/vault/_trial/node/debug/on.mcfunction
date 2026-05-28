# Show debug

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

summon minecraft:block_display ~ ~0.3 ~ {Glowing:true,Tags:["DebugDisplay","TrialDebugDisplay"],block_state:{Name:"orange_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]}\
,CustomName:{text:"TrialNode",color:"gold"},CustomNameVisible:true}

# Set team
team join Treasure @n[type=minecraft:block_display,tag=TrialDebugDisplay,distance=..3]
