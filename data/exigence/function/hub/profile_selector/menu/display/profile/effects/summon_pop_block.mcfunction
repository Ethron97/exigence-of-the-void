# Deselect a profile from the profile selector

## CONSTRAINTS
#   AS profile display
#   AT location

#=============================================================================================================

summon block_display ~ ~ ~ {teleport_duration:4,Tags:["PopBlock","NewPopBlock"],block_state:{Name:"purpur_pillar",Properties:{axis:z}},brightness:{block:10,sky:10}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}

scoreboard players operation @n[distance=..0.5,type=block_display,tag=NewPopBlock] IDID = @s IDID
scoreboard players operation @n[distance=..0.5,type=block_display,tag=NewPopBlock] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

tag @n[distance=..0.5,type=block_display,tag=NewPopBlock] remove NewPopBlock
