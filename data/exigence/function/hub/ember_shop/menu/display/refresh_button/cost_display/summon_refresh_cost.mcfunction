# Create new cost display for the refresh button

## CONSTRAINTS
#   AT location

#====================================================================================================

# DEBUG
execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D4 Menu) Creating refresh cost display

# Summon new text display
summon minecraft:text_display ~ ~ ~ {Rotation:[90.0,0.0],Tags:["RefreshCostDisplay","NewCostDisplay","EmberShopDisplay"]\
,CustomName:{text:"TextDisplay | RefreshCostDisplay"}\
,text:{text:"Test"},billboard:"fixed",alignment:"center",background:1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.75f,0.75f,0.75f]}}

# Remove local tag
tag @n[type=minecraft:text_display,tag=NewCostDisplay,distance=..1] remove NewCostDisplay
