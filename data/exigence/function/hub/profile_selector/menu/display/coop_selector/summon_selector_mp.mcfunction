# Summon selector for single player

## CONSTRAINTS
#   AS profile display
#   AT location

#====================================================================================================

#say Summon single player selector

# Summon display
function exigence:hub/profile_selector/menu/display/coop_selector/load_coop_selector with entity @s item.components."minecraft:custom_data"
tag @n[type=item_display,tag=NewItemDisplay,distance=..1] add Coop

# Team for glow color
team join Special @n[type=item_display,tag=NewItemDisplay,distance=..1]

# Item data
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_model_data".strings set value ["coop_selector"]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_name" set value {text:"Co-op",color:"yellow"}
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".scale set value '0.5'
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".hover_scale set value '0.5'

# Teleport (so the interpolate happens)
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run tp @s ~0.3 ~1.05 ~

# Display item details
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run function exigence:hub/profile_selector/menu/display/coop_selector/calls/private/show_all_details

# Remove local display tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..5] remove NewItemDisplay
