# Summon warp door frame

## CONSTRAINTS
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed"\
,Tags:["SidebarBorder","PredungeonDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4.0f,4.0f,2.0f]},CustomName:{text:"ItemDisplay | SidebarBorder"}\
,item:{id:"minecraft:sunflower",count:1,components:{"minecraft:custom_model_data":{strings:["sidebar_border"]}}}}
