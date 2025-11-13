# Setup all displays related to the player head invitor menu

## CONSTRAINTS
#   AS/AT slot display

#=============================================================================================================

# Reset page number
scoreboard players set @s hub.entity.page_number 1

# Summon page flippers
function exigence:hub/profile_selector/menu/display/coop_invitor/summon_page_flipper_left with entity @s item.components."minecraft:custom_data"
function exigence:hub/profile_selector/menu/display/coop_invitor/summon_page_flipper_right with entity @s item.components."minecraft:custom_data"

# Summon page label
summon minecraft:text_display ~ ~0.95 ~ {billboard:"fixed",alignment:"center",Tags:["PageLabel","NewTextDisplay"],text:[{text:"Page #"}],background:1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.3f,0.3f,0.3f]}}
scoreboard players operation @n[distance=..5,type=text_display,tag=NewTextDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
tag @n[distance=..5,type=text_display,tag=NewTextDisplay] remove NewTextDisplay

# Summon "slots"
execute positioned ~0.31 ~1.35 ~-1.15 run function exigence:hub/profile_selector/menu/display/coop_invitor/load_slot_background with entity @s item.components."minecraft:custom_data"
execute positioned ~0.0 ~1.35 ~-1.15 run function exigence:hub/profile_selector/menu/display/coop_invitor/load_slot_background with entity @s item.components."minecraft:custom_data"
execute positioned ~-0.31 ~1.35 ~-1.15 run function exigence:hub/profile_selector/menu/display/coop_invitor/load_slot_background with entity @s item.components."minecraft:custom_data"

# Setup heads
function exigence:hub/profile_selector/menu/display/player_head/refresh_heads

# Load page 1
scoreboard players set #current_page Temp 1
execute as @e[distance=..5,type=item_display,tag=PlayerHeadDisplay,tag=!Ignore] unless score @s hub.entity.player_head_page = #current_page Temp run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/hide_head
execute as @e[distance=..5,type=item_display,tag=PlayerHeadDisplay,tag=Ignore] run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/hide_head
function exigence:hub/profile_selector/menu/display/coop_invitor/effects/load_page
