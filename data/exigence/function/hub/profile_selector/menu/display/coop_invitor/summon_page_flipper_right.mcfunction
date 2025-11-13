# Summon selector for scrolling through player heads

## CONSTRAINTS
#   AS profile display
#   AT location

#=============================================================================================================

#say Summon page flipper right

# Summon display
function exigence:hub/profile_selector/menu/display/coop_invitor/load_page_flipper with entity @s item.components."minecraft:custom_data"
tag @n[distance=..1,type=item_display,tag=NewItemDisplay] add Right

# Team for glow color
team join Special @n[distance=..1,type=item_display,tag=NewItemDisplay]

# Item data
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_model_data".strings set value ["page_forward"]
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_name" set value {text:"Right",color:"yellow"}

# Teleport (so the interpolate happens)
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run tp @s ~0.32 ~1.0 ~

# Display item details
#execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/show_all_details

# Remove local display tag
tag @n[distance=..5,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
