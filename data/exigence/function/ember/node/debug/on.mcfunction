# Show debug

## CONSTRAINTS
#   AS/AT echo node

#====================================================================================================

summon minecraft:block_display ~ ~1.5 ~ {Glowing:true,Tags:["DebugDisplay","EchoDebugDisplay"],block_state:{Name:"blue_stained_glass"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-1.0f,-0.3f],scale:[0.6f,1.0f,0.6f]}\
,CustomName:{text:"EchoNode",color:"blue"},CustomNameVisible:true}

# Set team
team join Echo @n[type=minecraft:block_display,tag=EchoDebugDisplay,distance=..3]
# Green if chosen
execute if entity @s[tag=ChosenEchoNode] run team join ActiveEcho @n[type=minecraft:block_display,tag=EchoDebugDisplay,distance=..3]
# Color red if this node doesn't have a difficulty set
execute if score @s node.property.echo.difficulty matches 0 run team join Hazard @n[type=minecraft:block_display,tag=EchoDebugDisplay,distance=..3]

function exigence:ember/node/debug/summon_echo_difficulty_display
function exigence:ember/node/debug/summon_winrate_display