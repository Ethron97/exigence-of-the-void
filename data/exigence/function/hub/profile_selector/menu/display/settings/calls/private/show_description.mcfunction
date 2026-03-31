# Show the full setting description (when shift clicked)

## CONSTRAINTS
#   AS item_display
#   AT location

## INPUT
#   STR setting_code

#====================================================================================================

#say Show description

# Kill description if exists (so they don't pile up.)
kill @n[type=text_display,tag=SettingDescription,distance=..1]
kill @n[type=text_display,tag=SettingDescriptionTitle,distance=..1]

# Summon text display
#,background:2017213500
$summon minecraft:text_display ~ ~0.5 ~ {brightness:{block:11,sky:11},line_width:150,Rotation:[90,0],billboard:"fixed",alignment:"center",Tags:["SettingDescriptionTitle","NewTextDisplay"]\
,text:$(display),background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.7f,0.7f,0.7f]}}

summon minecraft:text_display ~ ~ ~ {brightness:{block:11,sky:11},line_width:260,Rotation:[90,0],billboard:"fixed",alignment:"left",Tags:["SettingDescription","NewTextDisplay"]\
,text:{text:""},background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.6f,0.6f,0.6f]}}

# Give matching scoreboard value
scoreboard players operation @e[type=minecraft:text_display,tag=NewTextDisplay,distance=..1] IDID = @s IDID
scoreboard players operation @e[type=minecraft:text_display,tag=NewTextDisplay,distance=..1] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Run function to assign specific text
$execute as @n[type=minecraft:text_display,tag=NewTextDisplay,tag=SettingDescription,distance=..0.1] run function exigence:hub/profile_selector/menu/display/settings/calls/description/$(scoreboard)

# Remove local tag
tag @e[type=minecraft:text_display,tag=NewTextDisplay,distance=..1] remove NewTextDisplay
