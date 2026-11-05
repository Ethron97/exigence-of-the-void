# Setup menu where players select difficulty and see scoreboard

## CONSTRAINTS
#   IN exigence:hub
#   AT ( -15.5 184.5 -8.0 )

#====================================================================================================

# Text displays
summon minecraft:text_display ~ ~1.1 ~0.01 {alignment:"center",background:1,line_width:150,Rotation:[0.0f,0.0f]\
,Tags:["TrialDisplay","TrialDisplayTitle"],billboard:'fixed',text:[{text:"Eye",color:"gold"}]}

summon minecraft:text_display ~-1 ~0.25 ~0.01 {alignment:"center",background:1,line_width:150,Rotation:[0.0f,0.0f]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.6f,0.6f,0.6f]}\
,Tags:["TrialDisplay","TrialDisplayTitle"],billboard:'fixed',text:[{text:"Trial",color:"yellow"}]}
summon minecraft:text_display ~ ~0.25 ~0.01 {alignment:"center",background:1,line_width:150,Rotation:[0.0f,0.0f]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.6f,0.6f,0.6f]}\
,Tags:["TrialDisplay","TrialDisplayTitle"],billboard:'fixed',text:[{text:"Crucible",color:"light_purple"}]}
summon minecraft:text_display ~1 ~0.25 ~0.01 {alignment:"center",background:1,line_width:150,Rotation:[0.0f,0.0f]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.6f,0.6f,0.6f]}\
,Tags:["TrialDisplay","TrialDisplayTitle"],billboard:'fixed',text:[{text:"Endless",color:"aqua"}]}

# Buttons
summon minecraft:block_display ~-1 ~ ~0.01 {Tags:["TrialDisplay","TrialButton","Trial","Eye"],block_state:{Name:"end_stone_bricks"},brightness:{sky:13,block:13}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},CustomNameVisible:false}

summon minecraft:block_display ~0 ~ ~0.01 {Tags:["TrialDisplay","TrialButton","Crucible","Eye"],block_state:{Name:"purpur_block"},brightness:{sky:13,block:13}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},CustomNameVisible:false}

summon minecraft:block_display ~1 ~ ~0.01 {Tags:["TrialDisplay","TrialButton","Endless","Eye"],block_state:{Name:"prismarine_bricks"},brightness:{sky:13,block:13}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},CustomNameVisible:false}


summon minecraft:block_display ~-1 ~ ~-0.12 {Tags:["TrialDisplay","ButtonBackground"],block_state:{Name:"chiseled_tuff_bricks"},brightness:{sky:13,block:13}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,1f,0f],translation:[0.2f,-0.2f,-0.2f],scale:[0.4f,0.4f,0.4f]},CustomNameVisible:false}

summon minecraft:block_display ~0 ~ ~-0.12 {Tags:["TrialDisplay","ButtonBackground"],block_state:{Name:"chiseled_tuff_bricks"},brightness:{sky:13,block:13}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,1f,0f],translation:[0.2f,-0.2f,-0.2f],scale:[0.4f,0.4f,0.4f]},CustomNameVisible:false}

summon minecraft:block_display ~1 ~ ~-0.12 {Tags:["TrialDisplay","ButtonBackground"],block_state:{Name:"chiseled_tuff_bricks"},brightness:{sky:13,block:13}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,1f,0f],translation:[0.2f,-0.2f,-0.2f],scale:[0.4f,0.4f,0.4f]},CustomNameVisible:false}


# Button interactions
summon minecraft:interaction ~-1 ~-0.2 ~0.01 {response:true,Tags:["TrialDisplay","TrialButtonInteraction","Trial","FunctionInteraction","Bolt"],width:0.4,height:0.4\
,data:{custom_data:{function_left:"exigence:hub/hub_trials/node/eye/clicked_trial",function_right:"exigence:hub/hub_trials/node/eye/clicked_trial"}}}

summon minecraft:interaction ~0 ~-0.2 ~0.01 {response:true,Tags:["TrialDisplay","TrialButtonInteraction","Crucible","FunctionInteraction","Bolt"],width:0.4,height:0.4\
,data:{custom_data:{function_left:"exigence:hub/hub_trials/node/eye/clicked_crucible",function_right:"exigence:hub/hub_trials/node/eye/clicked_crucible"}}}

#summon minecraft:interaction ~1 ~-0.2 ~0.01 {response:true,Tags:["TrialDisplay","TrialButtonInteraction","Endless","FunctionInteraction"],width:0.4,height:0.4\
,data:{custom_data:{function_left:"exigence:hub/hub_trials/node/eye/handle_interaction",function_right:"exigence:hub/hub_trials/node/eye/handle_interaction"}}}

