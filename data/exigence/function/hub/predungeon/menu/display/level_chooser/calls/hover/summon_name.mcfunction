# Summons a single text display

## CONSTRAINTS
#   AS profile display
#   AT location

#====================================================================================================

# Summon text display
summon minecraft:text_display ~ ~ ~ {Rotation:[180f,0.0f],teleport_duration:3,billboard:"fixed",alignment:"center"\
,Tags:["LevelChooserDetails","NewTextDisplay","PredungeonDisplay","FromHover","LevelName"],text:{text:"Test"}\
,background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.35f,0.35f,0.35f]}}

# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] IDID = @s IDID

# Assign text from parent
data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[0]

# Remove local tag
tag @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay
