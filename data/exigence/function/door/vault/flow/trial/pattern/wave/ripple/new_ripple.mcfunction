# initialize new ripple
#   Block display that drifts across platform

## CONSTRAINTS
#   AS wave marker
#   AT wave marker

## INPUT
#   FLOAT[] - Rotation

#========================================================================================================

# Setup at randomized position
$execute if score @s PatternSpeed matches 1 at @s align xyz run summon block_display ~ ~ ~ {brightness:{block:15,sky:15},teleport_duration:1,Rotation:$(Rotation),Tags:["FlowTrialSetup","Ripple","NewRipple"],\
block_state:{Name:"light_blue_concrete_powder"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-7.0f,0.0f,-0.4f],scale:[14.0f,0.01f,0.8f]}}
$execute if score @s PatternSpeed matches 2 at @s align xyz run summon block_display ~ ~ ~ {brightness:{block:15,sky:15},teleport_duration:1,Rotation:$(Rotation),Tags:["FlowTrialSetup","Ripple","NewRipple"],\
block_state:{Name:"cyan_concrete_powder"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-7.0f,0.0f,-0.4f],scale:[14.0f,0.02f,0.8f]}}
$execute if score @s PatternSpeed matches 3 at @s align xyz run summon block_display ~ ~ ~ {brightness:{block:15,sky:15},teleport_duration:1,Rotation:$(Rotation),Tags:["FlowTrialSetup","Ripple","NewRipple"],\
block_state:{Name:"blue_concrete_powder"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-7.0f,0.0f,-0.4f],scale:[14.0f,0.03f,0.8f]}}
$execute if score @s PatternSpeed matches 4 at @s align xyz run summon block_display ~ ~ ~ {brightness:{block:15,sky:15},teleport_duration:1,Rotation:$(Rotation),Tags:["FlowTrialSetup","Ripple","NewRipple"],\
block_state:{Name:"purple_concrete_powder"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-7.0f,0.0f,-0.4f],scale:[14.0f,0.03f,0.8f]}}
$execute if score @s PatternSpeed matches 5 at @s align xyz run summon block_display ~ ~ ~ {brightness:{block:15,sky:15},teleport_duration:1,Rotation:$(Rotation),Tags:["FlowTrialSetup","Ripple","NewRipple"],\
block_state:{Name:"magenta_concrete_powder"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-7.0f,0.0f,-0.4f],scale:[14.0f,0.03f,0.8f]}}

# Initialize scores
scoreboard players operation @e[type=block_display,tag=Ripple,tag=NewRipple] PatternSpeed = @s PatternSpeed
execute if score @s PatternSpeed matches 1 run scoreboard players set @s PatternTimer 90
execute if score @s PatternSpeed matches 2 run scoreboard players set @s PatternTimer 80
execute if score @s PatternSpeed matches 3 run scoreboard players set @s PatternTimer 70
execute if score @s PatternSpeed matches 4 run scoreboard players set @s PatternTimer 60
execute if score @s PatternSpeed matches 5 run scoreboard players set @s PatternTimer 50

# Remove local tag
tag @e[type=block_display,tag=Ripple,tag=NewRipple] remove NewRipple
