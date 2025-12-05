# Select a profile from the profile selector

## CONSTRAINTS
#   AS item shop display

## INPUT
#   data: item.components."minecraft:custom_data"

#=============================================================================================================

say Select

# Change player score
$execute at @s run scoreboard players set @p[distance=..16,tag=ProfileSelecting,scores={hub.player.profile_selector_id=$(profile_selector_id)}] profile.player.profile_id $(profile_id)

# Tag
tag @s add Selected

# Enchant the item
data modify entity @s item.components."minecraft:enchantments" set value {"minecraft:depth_strider":1}

# Item name
data modify entity @s item.components."minecraft:custom_name" set value {text:"Current Profile",color:"green"}

# Lore
data remove entity @s item.components."minecraft:lore"

# Pop block
execute at @s align xyz positioned ~ ~ ~-0.75 run function exigence:hub/profile_selector/menu/display/profile/effects/move_pop_block with entity @s item.components."minecraft:custom_data"
# Pop self
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~-0.23

# Team for glow color
team join Green

#=============================================================================================================
## LOAD CHESTS
# Get data
$execute in exigence:profile_data positioned 8 128 8 as @n[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] \
run function exigence:profile/profile_node/load/try_chest_to_data

execute at @s unless score #data_loaded Temp matches 1 run tellraw @p[distance=..20,tag=ProfileSelecting] [{text:"Another player has already loaded the chests for this co-op profile",color:"yellow",italic:true}]

# Fill chests (if data was loaded successfully)
$execute if score #data_loaded Temp matches 1 at @s at @n[distance=..32,type=marker,tag=ProfileSelectorNode,scores={hub.profile_selector_id=$(profile_selector_id)}] \
run function exigence:hub/profile_selector/load/load_chests

# Load deck analyzer (if data was loaded successfully)
$execute if score #data_loaded Temp matches 1 at @s as @n[distance=..32,type=marker,tag=DeckAnalyzer,scores={hub.entity.profile_selector_id=$(profile_selector_id)}] \
run function exigence:hub/profile_selector/load/load_deck_analyzer {profile_id:$(profile_id)}

#=============================================================================================================

# Effects (particle sound)
#   "Creating" tag added by create_new to prevent overlapping effects
execute at @s[tag=!Creating] run playsound minecraft:block.ender_chest.open block @p[distance=..16,tag=ProfileSelecting] ~ ~ ~ 1.0 1.4
execute at @s[tag=!Creating] run particle end_rod ~ ~ ~0.1 0.3 0.3 0.0 0.01 5

# Un/rehover for display entities (if currently hovering)
execute as @s[tag=Hover] run function exigence:hub/profile_selector/menu/display/profile/calls/unhover with entity @s item.components."minecraft:custom_data"
execute as @s[tag=Hover] run function exigence:hub/profile_selector/menu/display/profile/calls/hover with entity @s item.components."minecraft:custom_data"
