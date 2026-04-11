# Summon selector for scrolling through player heads

## CONSTRAINTS
#   AS profile display
#   AT location

#====================================================================================================

#say (D3) Summon page flipper left

# Summon display
function exigence:hub/profile_selector/menu/display/coop_invitor/load_page_flipper with entity @s item.components."minecraft:custom_data"
tag @n[type=item_display,tag=NewItemDisplay,distance=..1] add Left

# Team for glow color
team join Special @n[type=item_display,tag=NewItemDisplay,distance=..1]

# Item data
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_model_data".strings set value ["page_backward"]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_name" set value {text:"Left",color:"yellow"}

# Teleport (so the interpolate happens)
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run tp @s ~-0.32 ~1.0 ~

# Remove local display tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..5] remove NewItemDisplay
