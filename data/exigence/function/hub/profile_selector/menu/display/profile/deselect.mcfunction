# Deselect a profile from the profile selector

## CONSTRAINTS
#   AS item shop display

## INPUT
#   data: item.components."minecraft:custom_data"

#=============================================================================================================

say Deselect

# Change player score
$execute at @s run scoreboard players reset @p[distance=..16,tag=ProfileSelecting,scores={hub.player.profile_selector_id=$(profile_selector_id)}] profile.player.profile_id
$execute at @s run scoreboard players reset @p[distance=..16,tag=ProfileSelecting,scores={hub.player.profile_selector_id=$(profile_selector_id)}] profile.player.coop_profile_id

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
execute at @s align xyz positioned ~ ~ ~-0.95 run function exigence:hub/profile_selector/menu/display/profile/effects/move_pop_block with entity @s item.components."minecraft:custom_data"
# Unpop self
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~-0.43

# Team for glow color
team join Green

#=============================================================================================================
## SAVE CHESTS
# Chests -> data
#   OUTPUTS chests_saved if there was data to save
$execute in exigence:hub positioned 999.5 128 6.5 at @n[distance=..200,type=marker,tag=ProfileSelectorNode,scores={hub.profile_selector_id=$(profile_selector_id)}] \
run function exigence:hub/profile_selector/load/save_chests

# Data -> profile chest
scoreboard players set #remove_tag Temp 1
$execute if score #chests_saved Temp matches 1 \
in exigence:profile_data positioned 8 128 8 as @n[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] \
run function exigence:profile/profile_node/save/try_data_to_chest

# Unload deck analyzer
$execute if score #chests_saved Temp matches 1 at @s \
run function exigence:hub/profile_selector/load/unload_deck_analyzer {profile_selector_id:$(profile_selector_id)}

#=============================================================================================================

# Save actual profile from player
$execute at @s as @p[distance=..16,tag=ProfileSelecting,tag=ProfileSelecting,scores={hub.player.profile_selector_id=$(profile_selector_id)}] \
in exigence:profile_data run function exigence:profile/profile_node/save_profile {profile_id:$(profile_id)}
