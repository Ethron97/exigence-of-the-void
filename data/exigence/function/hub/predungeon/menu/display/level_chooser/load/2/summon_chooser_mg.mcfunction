# Summon smiddle ground component of 3d level chooser

## CONSTRAINTS
#   AS predungeon menu node
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3\
,Tags:["LevelChooserDisplayMG","NewItemDisplay","PredungeonDisplay","Level2","PredungeonMenuDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},CustomName:{text:"ItemDisplay | LevelChooserMG | 2"}\
,item:{id:"minecraft:netherite_upgrade_smithing_template",count:1,components:{"minecraft:custom_model_data":{strings:["unknown_level_middleground_bw"]}}}}

# Remove local tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay