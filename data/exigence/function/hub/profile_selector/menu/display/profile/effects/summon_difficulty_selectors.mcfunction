# Display difficulty selector buttons

## CONSTRAINTS
#   AS profile display

#=============================================================================================================

#say Summon difficulty selectors

# Place the four buttons
#execute at @s positioned ~-0.355 ~0.9 ~ run function exigence:hub/profile_selector/menu/display/difficulty_selector/summon_selector_1 with entity @s item.components."minecraft:custom_data"
#execute at @s positioned ~-0.355 ~1.3 ~ run function exigence:hub/profile_selector/menu/display/difficulty_selector/summon_selector_2 with entity @s item.components."minecraft:custom_data"
#execute at @s positioned ~-0.355 ~1.7 ~ run function exigence:hub/profile_selector/menu/display/difficulty_selector/summon_selector_3 with entity @s item.components."minecraft:custom_data"
#execute at @s positioned ~-0.355 ~2.1 ~ run function exigence:hub/profile_selector/menu/display/difficulty_selector/summon_selector_4 with entity @s item.components."minecraft:custom_data"
execute at @s run function exigence:hub/profile_selector/menu/display/difficulty_selector/summon_selector_1 with entity @s item.components."minecraft:custom_data"
execute at @s run function exigence:hub/profile_selector/menu/display/difficulty_selector/summon_selector_2 with entity @s item.components."minecraft:custom_data"
execute at @s run function exigence:hub/profile_selector/menu/display/difficulty_selector/summon_selector_3 with entity @s item.components."minecraft:custom_data"

execute at @s unless entity @p[distance=..16,tag=ProfileSelecting,scores={career.exigence_level=4..}] run function exigence:hub/profile_selector/menu/display/difficulty_selector/summon_selector_4_locked with entity @s item.components."minecraft:custom_data"
execute at @s if entity @p[distance=..16,tag=ProfileSelecting,scores={career.exigence_level=4..}] run function exigence:hub/profile_selector/menu/display/difficulty_selector/summon_selector_4 with entity @s item.components."minecraft:custom_data"
