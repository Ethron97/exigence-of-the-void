# Summon warp door frame

## CONSTRAINTS
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],billboard:"fixed"\
,Tags:["SidebarArrow","PredungeonDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.7f]},CustomName:{text:"ItemDisplay | SidebarArrow"}\
,item:{id:"minecraft:map",count:1,components:{"minecraft:custom_model_data":{strings:["arrow"]}}}}
