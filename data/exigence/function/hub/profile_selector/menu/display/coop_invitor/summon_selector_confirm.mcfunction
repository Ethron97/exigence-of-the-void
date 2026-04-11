# Summon selector for confirming coop selections

## CONSTRAINTS
#   AS profile display
#   AT location

#====================================================================================================

#say (D3) Summon invitor confirm

# Summon display
function exigence:hub/profile_selector/menu/display/coop_invitor/load_coop_invitor with entity @s item.components."minecraft:custom_data"
tag @n[type=item_display,tag=NewItemDisplay,distance=..1] add Confirm

# Team for glow color
team join Red @n[type=item_display,tag=NewItemDisplay,distance=..1]

# Item data
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_model_data".strings set value ["coop_confirm_red"]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_name" set value {text:"Confirm",color:"yellow"}

# Teleport (so the interpolate happens)
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run tp @s ~0.3 ~1.75 ~

# Display item details
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/show_all_details

# Remove local display tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..5] remove NewItemDisplay
