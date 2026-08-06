# Summon warp door frame

## CONSTRAINTS
#   AS profile node
#   AT location

#====================================================================================================

# Load back
summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],billboard:"fixed"\
,Tags:["TaskFrameObtained","PredungeonDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},CustomName:{text:"ItemDisplay | TaskFrameObtained"}\
,item:{id:"minecraft:map",count:1,components:{"minecraft:custom_model_data":{strings:["task_frame_obtained"]}}}}

# Summon item display
function exigence:hub/predungeon/menu/display/story_sidebar/advancement/summon_advancement

# Assign details to item display (removes local tag)
function exigence:hub/predungeon/menu/display/story_sidebar/advancement/assign_details_current
