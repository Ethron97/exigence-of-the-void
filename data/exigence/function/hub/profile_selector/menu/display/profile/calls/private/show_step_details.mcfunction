# Summons a single text display to represent a line of lore, based on input line number

## CONSTRAINTS
#   AS profile display
#   AT location

## INPUT
#   STR step_text

#=============================================================================================================

$say Show step details $(step_text)

# Summon text display
$summon minecraft:text_display ~ ~ ~ {billboard:"fixed",alignment:"center",Tags:["StepDetails","NewTextDisplay"],text:{text:"$(step_text)",color:"yellow"},background:1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.75f,0.75f,0.75f]}}

# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] IDID = @s IDID
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Remove local tag
tag @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay
