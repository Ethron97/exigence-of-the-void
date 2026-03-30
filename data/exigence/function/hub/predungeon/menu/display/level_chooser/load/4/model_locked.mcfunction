# Set models for this and related displays

## CONSTRAINTS
#   AS/AT level chooser

#====================================================================================================

data modify entity @s item.components."minecraft:custom_model_data".strings set value ["level_4_bw"]
data modify entity @n[distance=..0.3,type=item_display,tag=LevelChooserDisplayMG] item.components."minecraft:custom_model_data".strings set value ["level_4_middleground_bw"]
data modify entity @n[distance=..0.3,type=item_display,tag=LevelChooserDisplayFG] item.components."minecraft:custom_model_data".strings set value ["level_4_foreground_bw"]
