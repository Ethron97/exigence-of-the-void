# Change page, either -1 or +1 (wraparound)

## CONSTRAINTS
#   AS/AT slot display

## INPUT
#   SCORE #page_mod Temp number of pages to change
#   DATA (item.components."minecraft:custom_data")

#=============================================================================================================

#say Change page

# Upsert/reorder all heads
#   Outputs #order_index and #pages
function exigence:hub/profile_selector/menu/display/player_head/refresh_heads

# Get new page number
scoreboard players operation @s hub.entity.page_number += #page_mod Temp
# Wrap around range
execute if score @s hub.entity.page_number > #pages Temp run scoreboard players set @s hub.entity.page_number 1
execute if score @s hub.entity.page_number matches ..0 run scoreboard players operation @s hub.entity.page_number = #pages Temp

scoreboard players operation #current_page Temp = @s hub.entity.page_number
# Any head not on new page, move to storage
execute as @e[distance=..16,type=item_display,tag=PlayerHeadDisplay] unless score @s hub.entity.player_head_page = #current_page Temp run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/hide_head

# Load heads to page
function exigence:hub/profile_selector/menu/display/coop_invitor/effects/load_page
