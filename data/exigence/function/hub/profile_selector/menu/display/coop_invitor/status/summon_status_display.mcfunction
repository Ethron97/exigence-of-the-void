# Summon invite status display

## CONSTRAINTS
#   AS slot dispay
#   AT location

## INPUT
#   STR num, value between 2-4

#=============================================================================================================

# Summon text display
$summon minecraft:text_display ~ ~ ~ {teleport_duration:3,billboard:"fixed",alignment:"left",Tags:["StatusDisplay","StatusDisplay$(num)","NewTextDisplay","ConfirmGroup"]\
,background:1,text:[{text:"P$(num): ",color:"white"},{text:"",color:"yellow"},{text:"",color:"yellow"}]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.3f,0.3f,0.3f]}}

# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] IDID = @s IDID
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Remove local tag
tag @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay
