# Summon selector for gatekeeping the level selector

## CONSTRAINTS
#   AS predungeon menu node
#   AT location

#====================================================================================================

#say (D3) Summon player sensor

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",Tags:["PlayerSensorPupil","NewItemDisplay","PredungeonDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},CustomName:{text:"ItemDisplay | PlayerSensorPupil"}\
,interpolation_duration:3,teleport_duration:1\
,item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_model_data":{strings:["eye_pupil"]}}}}

# Remove local tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay