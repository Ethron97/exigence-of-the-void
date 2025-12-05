# Called by update_slot_coop as second/macro function

## CONSTRAINTS
#   AS slot display

## INPUT
#   SCORE #new_main_id Temp

#=============================================================================================================

execute if score #remaining_profiles Temp matches 2.. store result entity @s item.components."minecraft:custom_data".coop_profile_id int 1 run scoreboard players get #new_main_id Temp

execute if score #remaining_profiles Temp matches 1 run tag @s remove Coop
execute if score #remaining_profiles Temp matches 1 run data remove entity @s item.components."minecraft:custom_data".coop_profile_id
execute if score #remaining_profiles Temp matches 1 at @s run function exigence:hub/profile_selector/menu/display/text_displays/hide_coop_list with entity @s item.components."minecraft:custom_data"
# Update solo sticker
execute if score #remaining_profiles Temp matches 1 at @s positioned ~ ~ ~ as @n[distance=..3,tag=ProfileTypeSticker] run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["solo_selector"]
execute if score #remaining_profiles Temp matches 1 at @s positioned ~ ~ ~ as @n[distance=..3,tag=ProfileTypeSticker] run data modify entity @s transformation.scale set value [0.18f,0.18f,0.18f]