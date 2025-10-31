# Deselect a profile from the profile selector

## CONSTRAINTS
#   AS item shop display

## INPUT
#   data: item.components."minecraft:custom_data"

#=============================================================================================================

#say Deselect

tag @s remove Selected

# Un-enchant the item
data modify entity @s item.components."minecraft:enchantments" set value {}

# Item name
data modify entity @s item.components."minecraft:custom_name" set value {text:"Load Profile",color:"green"}

# Lore
data modify entity @s item.components."minecraft:lore" set value [{text:"Click to load",italic:false,color:"green"}]
data modify entity @s item.components."minecraft:lore" append value [{text:"Shift click to delete",italic:false,color:"red"}]

# Change the block behind it
#execute at @s run setblock ~ ~ ~-1 purpur_block

# Unpop block
execute at @s align xyz positioned ~ ~ ~-0.99 run function exigence:hub/profile_selector/menu/display/profile/effects/move_pop_block with entity @s item.components."minecraft:custom_data"
# Unpop self
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~-0.45

# Team for glow color
team join Green

# Save chests
# Chests -> data
$execute in exigence:hub at @n[distance=..200,type=marker,tag=ProfileSelectorNode,scores={hub.profile_selector_id=$(profile_selector_id)}] \
run function exigence:hub/profile_selector/load/save_chests

# Data -> profile chest
$execute in exigence:profile_data positioned 8 128 8 at @n[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] \
run function exigence:profile/profile_node/save/data_to_chest

# Save actual profile from player
$execute at @s as @p[tag=ProfileSelecting,scores={hub.player.profile_selector_id=$(profile_selector_id)}] \
in exigence:profile_data run function exigence:profile/profile_node/save_profile {profile_id:$(profile_id)}
