# Summon selector for gatekeeping the level selector

## CONSTRAINTS
#   AS predungeon menu node
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3\
,Tags:["LevelChooserDisplay","NewItemDisplay","PredungeonDisplay","Level3","PredungeonMenuDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},CustomName:{text:"ItemDisplay | LevelChooser | 3"}\
,item:{id:"minecraft:netherite_upgrade_smithing_template",count:1,components:{"minecraft:custom_model_data":{strings:["unknown_level_bw"]}\
}}}

# Default to locked
#team join Red @n[distance=..0.1,type=item_display,tag=NewItemDisplay]

# Assign new IDID
#scoreboard players add #highest IDID 1
#scoreboard players operation @n[distance=..0.1,type=item_display,tag=NewItemDisplay] IDID = #highest IDID

# Add ID to item data
#execute store result entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Remove local tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay