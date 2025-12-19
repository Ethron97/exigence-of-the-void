# Summon detail stickers

## CONSTRAINTS
#   AS slot display

#=============================================================================================================

#say Summon stickers

execute at @s align z positioned ~0.0 ~0.75 ~0.01 run function exigence:hub/profile_selector/menu/display/profile/stickers/sticker_background with entity @s item.components."minecraft:custom_data"

execute at @s align z positioned ~0.3 ~0.73 ~0.05 run function exigence:hub/profile_selector/menu/display/profile/stickers/summon_profile_type with entity @s item.components."minecraft:custom_data"
execute at @s align z positioned ~0.0 ~0.73 ~0.05 run function exigence:hub/profile_selector/menu/display/profile/stickers/summon_difficulty with entity @s item.components."minecraft:custom_data"
execute at @s align z positioned ~-0.3 ~0.73 ~0.05 run function exigence:hub/profile_selector/menu/display/profile/stickers/summon_identifier with entity @s item.components."minecraft:custom_data"

