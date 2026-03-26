# Load the "door slot" markers, so we can move other assets around the door easily

## CONSTRAINTS
#   AT door frame

#====================================================================================================

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker0] run \
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3,teleport_duration:4\
,Tags:["DoorPart","PredungeonDisplay","DoorSlotFill","DoorSlotFill0","Closed"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,3.0f]},CustomName:{text:"ItemDisplay | SlotFill0"}\
,item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["square_fill"]}}}}

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker1] run \
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3,teleport_duration:4\
,Tags:["DoorPart","PredungeonDisplay","DoorSlotFill","DoorSlotFill1","Closed"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,3.0f]},CustomName:{text:"ItemDisplay | SlotFill1"}\
,item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["square_fill"]}}}}

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker2] run \
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3,teleport_duration:4\
,Tags:["DoorPart","PredungeonDisplay","DoorSlotFill","DoorSlotFill2","Closed"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,3.0f]},CustomName:{text:"ItemDisplay | SlotFill2"}\
,item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["square_fill"]}}}}

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker3] run \
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3,teleport_duration:4\
,Tags:["DoorPart","PredungeonDisplay","DoorSlotFill","DoorSlotFill3","Closed"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,3.0f]},CustomName:{text:"ItemDisplay | SlotFill3"}\
,item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["square_fill"]}}}}

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker4] run \
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3,teleport_duration:4\
,Tags:["DoorPart","PredungeonDisplay","DoorSlotFill","DoorSlotFill4","Closed"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,3.0f]},CustomName:{text:"ItemDisplay | SlotFill4"}\
,item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["square_fill"]}}}}

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker5] run \
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3,teleport_duration:4\
,Tags:["DoorPart","PredungeonDisplay","DoorSlotFill","DoorSlotFill5","Closed"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,3.0f]},CustomName:{text:"ItemDisplay | SlotFill5"}\
,item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["square_fill"]}}}}

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker6] run \
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3,teleport_duration:4\
,Tags:["DoorPart","PredungeonDisplay","DoorSlotFill","DoorSlotFill6","Closed"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,3.0f]},CustomName:{text:"ItemDisplay | SlotFill6"}\
,item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["square_fill"]}}}}
