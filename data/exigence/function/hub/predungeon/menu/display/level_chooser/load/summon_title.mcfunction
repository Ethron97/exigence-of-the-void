# Summon selector for gatekeeping the level selector

## CONSTRAINTS
#   AS predungeon menu node
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:text_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3,background:1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}\
,Tags:["LevelChooserTitle","NewTextDisplay","PredungeonDisplay","PredungeonMenuDisplay"]\
,text:[{text:"Select destination for primary ",color:"green"},{text:"Echo Shard",color:"blue"}]}

# Remove local tag
tag @n[type=text_display,tag=NewTextDisplay,distance=..0.1] remove NewItemDisplay