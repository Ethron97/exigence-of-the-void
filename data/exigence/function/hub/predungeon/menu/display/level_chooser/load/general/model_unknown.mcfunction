# Set models for this and related displays

## CONSTRAINTS
#   AS/AT level chooser

#====================================================================================================

data modify entity @s item.components."minecraft:custom_model_data".strings set value ["unknown_level"]
data modify entity @n[distance=..0.3,type=item_display,tag=LevelChooserDisplayMG] item.components."minecraft:custom_model_data".strings set value ["unknown_level_middleground"]
data modify entity @n[distance=..0.3,type=item_display,tag=LevelChooserDisplayFG] item.components."minecraft:custom_model_data".strings set value ["unknown_level_foreground"]
