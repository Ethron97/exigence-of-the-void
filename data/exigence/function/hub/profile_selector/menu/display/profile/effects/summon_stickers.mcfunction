# Summon detail stickers

## CONSTRAINTS
#   AS slot display

#=============================================================================================================

say Summon stickers

execute at @s positioned ~ ~-0.65 ~ run function exigence:hub/profile_selector/menu/display/profile/stickers/profile_type with entity @s item.components."minecraft:custom_data"
