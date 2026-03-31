# Set models for this and related displays

## CONSTRAINTS
#   AS/AT level chooser

#====================================================================================================

data modify entity @n[type=item_display,tag=LevelChooserDisplay,distance=..0.3] item.components."minecraft:custom_model_data".strings set value ["unknown_level"]
data modify entity @n[type=item_display,tag=LevelChooserDisplayMG,distance=..0.3] item.components."minecraft:custom_model_data".strings set value ["unknown_level_middleground"]
data modify entity @n[type=item_display,tag=LevelChooserDisplayFG,distance=..0.3] item.components."minecraft:custom_model_data".strings set value ["unknown_level_foreground"]
