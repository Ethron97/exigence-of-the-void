# Show debug

## CONSTRAINTS
#   AS/AT beacon node

#====================================================================================================

summon minecraft:block_display ~ ~1.5 ~ {Glowing:true,Tags:["DebugDisplay","BeaconDebugDisplay"],block_state:{Name:"light_blue_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-1.0f,-0.3f],scale:[0.6f,1.0f,0.6f]}\
,CustomName:{text:"BeaconNode",color:"aqua"},CustomNameVisible:true}

# Set team
team join Ember @n[type=minecraft:block_display,tag=BeaconDebugDisplay,distance=..3]
