# Summons a single text display for plaer head name

## CONSTRAINTS
#   AS profile display
#   AT location

#=============================================================================================================

# Summon text display
#,background:2017213500
summon minecraft:text_display ~ ~ ~ {teleport_duration:4,billboard:"fixed",alignment:"center",Tags:["PlayerHeadDetails","NewTextDisplay"],text:{text:""}\
,background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.45f,0.45f,0.45f]}}

# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] IDID = @s IDID
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Set text
data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:profile".name

# Remove local tag
tag @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay
