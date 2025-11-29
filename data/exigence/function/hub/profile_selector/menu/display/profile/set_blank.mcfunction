# Reset to a blank profile slot

## CONSTRAINTS
#   AS profile selector display

#=============================================================================================================

say Set blank

# Change the block behind it
execute at @s run setblock ~ ~ ~-1 purpur_block

tag @s add Blank
tag @s remove ProfileLoaded
tag @s remove Coop

# Team for glow color
team join Special

# Item name
data modify entity @s item.components."minecraft:custom_name" set value {text:"Empty Slot",color:"yellow"}

# Lore
data modify entity @s item.components."minecraft:lore" set value [{text:"Click to create",italic:false,color:"yellow"}]
data modify entity @s item.components."minecraft:lore" append value [{text:"new profile",italic:false,color:"yellow"}]

# Item type
data modify entity @s item.id set value "minecraft:ghast_tear"

# Profile id
data modify entity @s item.components."minecraft:custom_data".profile_id set value 0

# Remove pop block
execute at @s run function exigence:hub/profile_selector/menu/display/profile/effects/remove_pop_block with entity @s item.components."minecraft:custom_data"

# Remove stickers
function exigence:hub/profile_selector/menu/display/profile/effects/remove_stickers with entity @s item.components."minecraft:custom_data"

# Remove misc text displays
function exigence:hub/profile_selector/menu/display/text_displays/hide_profile_info with entity @s item.components."minecraft:custom_data"
function exigence:hub/profile_selector/menu/display/text_displays/hide_coop_list with entity @s item.components."minecraft:custom_data"
