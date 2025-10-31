# Select a profile from the profile selector

## CONSTRAINTS
#   AS item shop display

## INPUT
#   data: item.components."minecraft:custom_data"

#=============================================================================================================

#say Select

# Tag
tag @s add Selected

# Enchant the item
data modify entity @s item.components."minecraft:enchantments" set value {"minecraft:depth_strider":1}

# Item name
data modify entity @s item.components."minecraft:custom_name" set value {text:"Current Profile",color:"green"}

# Lore
data remove entity @s item.components."minecraft:lore"

# Change the block behind it
#execute at @s run setblock ~ ~ ~-1 purpur_pillar[axis=z]

# Pop block
execute at @s align xyz positioned ~ ~ ~-0.82 run function exigence:hub/profile_selector/menu/display/profile/effects/move_pop_block with entity @s item.components."minecraft:custom_data"
# Pop self
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~-0.3

# Team for glow color
team join Green

# Load chests
# Get data
$execute in exigence:profile_data positioned 8 128 8 at @n[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] \
run function exigence:profile/profile_node/load/chest_to_data

# Fill chests
$execute in exigence:hub at @n[distance=..200,type=marker,tag=ProfileSelectorNode,scores={hub.profile_selector_id=$(profile_selector_id)}] \
run function exigence:hub/profile_selector/load/load_chests

# Effects (particle sound)
#   "Creating" tag added by create_new to prevent overlapping effects
execute at @s[tag=!Creating] run playsound minecraft:block.ender_chest.open block @p[distance=..24] ~ ~ ~ 1.0 1.4
execute at @s[tag=!Creating] run particle end_rod ~ ~ ~0.1 0.3 0.3 0.0 0.01 5

# Un/rehover for display entities (if currently hovering)
execute as @s[tag=Hover] run function exigence:hub/profile_selector/menu/display/profile/calls/unhover with entity @s item.components."minecraft:custom_data"
execute as @s[tag=Hover] run function exigence:hub/profile_selector/menu/display/profile/calls/hover with entity @s item.components."minecraft:custom_data"
