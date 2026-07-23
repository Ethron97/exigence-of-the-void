# Create new cost display for the refresh button

## CONSTRAINTS
#   AT location

#====================================================================================================

# DEBUG
execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D4 Menu) Creating raity selector title

# Summon new text display
summon minecraft:text_display ~ ~ ~ {Rotation:[90.0,0.0],Tags:["RaritySelectorTitle","NewRaritySelectorTitle","EmberShopDisplay"]\
,CustomName:{text:"TextDisplay | RaritySelectorTitle"}\
,text:{text:"Test"},billboard:"fixed",alignment:"center",background:1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}}

# Remove local tag
tag @n[type=minecraft:text_display,tag=NewRaritySelectorTitle,distance=..1] remove NewRaritySelectorTitle
