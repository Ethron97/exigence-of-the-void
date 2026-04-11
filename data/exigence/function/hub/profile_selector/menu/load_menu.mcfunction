# Load the profile selector menu

## CONSTRAINTS
#   AT profile selector node

## INPUT
#   INT player_id
#   INT profile_selector_id

#====================================================================================================

#$say (D3) Load profile selector menu $(profile_selector_id)

# Load the 5 slots:
# Call function to load slot #
$execute positioned ~-2 ~1.5 ~-5.4 run function exigence:hub/profile_selector/menu/try_load_slot_ {player_id:$(player_id),slot_id:1,profile_selector_id:$(profile_selector_id)}
$execute positioned ~-1 ~1.5 ~-5.4 run function exigence:hub/profile_selector/menu/try_load_slot_ {player_id:$(player_id),slot_id:2,profile_selector_id:$(profile_selector_id)}
$execute positioned ~0 ~1.5 ~-5.4 run function exigence:hub/profile_selector/menu/try_load_slot_ {player_id:$(player_id),slot_id:3,profile_selector_id:$(profile_selector_id)}
$execute positioned ~1 ~1.5 ~-5.4 run function exigence:hub/profile_selector/menu/try_load_slot_ {player_id:$(player_id),slot_id:4,profile_selector_id:$(profile_selector_id)}
$execute positioned ~2 ~1.5 ~-5.4 run function exigence:hub/profile_selector/menu/try_load_slot_ {player_id:$(player_id),slot_id:5,profile_selector_id:$(profile_selector_id)}

#====================================================================================================
# Load titles
summon minecraft:item_display ~ ~5.25 ~-4.5 {brightness:{block:13,sky:13},CustomName:{text:"ItemDisplay | TitleProfiles"},Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["MenuTitleDisplay","NewMenuDisplay"],\
item:{id:"minecraft:sunflower",count:1,components:{"minecraft:custom_model_data":{strings:["title_profiles"]}}}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[3.0f,3.0f,1f]}}

summon minecraft:item_display ~4.5 ~5.25 ~ {brightness:{block:13,sky:13},CustomName:{text:"ItemDisplay | TitleSettings"},Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["MenuTitleDisplay","NewMenuDisplay"],\
item:{id:"minecraft:sunflower",count:1,components:{"minecraft:custom_model_data":{strings:["title_settings"]}}}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[3.0f,3.0f,1f]}}

summon minecraft:item_display ~-4.5 ~5.25 ~ {brightness:{block:13,sky:13},CustomName:{text:"ItemDisplay | TitleStorage"},Rotation:[-90.0f,0.0f],billboard:"fixed",Tags:["MenuTitleDisplay","NewMenuDisplay"],\
item:{id:"minecraft:sunflower",count:1,components:{"minecraft:custom_model_data":{strings:["title_storage"]}}}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[3.0f,3.0f,1f]}}

# Assign id (so it gets cleaned up upon leaving)
$execute as @e[tag=NewMenuDisplay,distance=..16] run scoreboard players set @s hub.entity.profile_selector_id $(profile_selector_id)
tag @e[tag=NewMenuDisplay,distance=..16] remove NewMenuDisplay