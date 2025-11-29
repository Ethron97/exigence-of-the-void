# Summon invite status display title

## CONSTRAINTS
#   AS slot dispay
#   AT location

## INPUT
#   data

#=============================================================================================================

# Summon text display
summon minecraft:text_display ~ ~ ~ {teleport_duration:3,billboard:"fixed",alignment:"center",Tags:["StatusDisplay","StatusDisplayTitle","NewTextDisplay","ConfirmGroup"]\
,background:1,text:[{text:"Invite Status:",color:"white",underlined:true}]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.33f,0.33f,0.33f]}}

# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] IDID = @s IDID
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Remove local tag
tag @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay
