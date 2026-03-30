# Summon selector for gatekeeping the level selector

## CONSTRAINTS
#   AS predungeon menu node
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3\
,Tags:["DeckSizeDisplay","PredungeonDisplay","PredungeonMenuDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.6f]},CustomName:{text:"ItemDisplay | DeckSize | 4"}\
,item:{id:"minecraft:netherite_upgrade_smithing_template",count:1,components:{"minecraft:custom_model_data":{strings:["deck_40"]}}}}
