# Summons a single text display to represent a line of lore, based on input line number

## CONSTRAINTS
#   AS profile display
#   AT location

## INPUT
#   STR step_text

#====================================================================================================

#$say (D3) Show step details $(step_text)

# Summon text display
$summon minecraft:text_display ~ ~ ~0.03 {billboard:"fixed",alignment:"center",Tags:["StepDetails","NewTextDisplay"],text:{text:"$(step_text)",color:"yellow"},background:1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}}

# Give matching scoreboard value
scoreboard players operation @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] IDID = @s IDID
scoreboard players operation @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Remove local tag
tag @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] remove NewTextDisplay
