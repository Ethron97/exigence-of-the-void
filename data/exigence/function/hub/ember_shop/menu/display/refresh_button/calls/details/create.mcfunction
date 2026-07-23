# Create new cost display for this item display
#   Responsible purely for entity creation and assignment

## CONSTRAINTS
#   AS item_display
#   AT position

#====================================================================================================

# DEBUG
execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D4 Menu) Creating detail

# Summon new text display
summon minecraft:text_display ~ ~ ~ {Rotation:[90.0,0.0],Tags:["RefreshDisplay","NewRefreshDisplay","EmberShopDisplay"]\
,CustomName:{text:"TextDisplay | RefreshDisplay"}\
,text:{text:"Test"},billboard:"fixed",alignment:"center",background:1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}}

# Copy scoreboard value
scoreboard players operation @n[type=minecraft:text_display,tag=NewRefreshDisplay,distance=..1] IDID = @s IDID

# Merge rotation
#data modify entity @e[distance=..1,type=minecraft:text_display,tag=NewRefreshDisplay,limit=1] Rotation set from entity @s Rotation

# Remove local tag
tag @n[type=minecraft:text_display,tag=NewRefreshDisplay,distance=..1] remove NewRefreshDisplay
