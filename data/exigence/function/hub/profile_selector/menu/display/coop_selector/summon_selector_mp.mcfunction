# Summon selector for single player

## CONSTRAINTS
#   AS profile display
#   AT location

#=============================================================================================================

say Summon single player selector

# Summon display
function exigence:hub/profile_selector/menu/display/coop_selector/load_coop_selector with entity @s item.components."minecraft:custom_data"
tag @n[distance=..1,type=item_display,tag=NewItemDisplay] add Coop

# Team for glow color
team join Special @n[distance=..1,type=item_display,tag=NewItemDisplay]

# Item data
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.id set value "minecraft:axolotl_bucket"
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_name" set value {text:"Co-op",color:"yellow"}
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".difficulty set value 1

# Teleport (so the interpolate happens)
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run tp @s ~0.3 ~1.0 ~

# Display item details
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run function exigence:hub/profile_selector/menu/display/coop_selector/calls/private/show_all_details

# Remove local display tag
tag @n[distance=..5,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
