# Show debug

## CONSTRAINTS
#   AS/AT door node

#====================================================================================================

summon minecraft:block_display ~ ~1.5 ~ {Glowing:true,Tags:["DebugDisplay","DoorDebugDisplay"],block_state:{Name:"yellow_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.0f,-1.0f,-0.3f],scale:[4.0f,4.0f,0.6f]}\
,CustomName:{text:"DoorNode",color:"yellow"},CustomNameVisible:true}

data modify entity @n[type=minecraft:block_display,tag=DoorDebugDisplay,distance=..3] Rotation set from entity @s Rotation

# Set team
team join Special @n[type=minecraft:block_display,tag=DoorDebugDisplay,distance=..3]
