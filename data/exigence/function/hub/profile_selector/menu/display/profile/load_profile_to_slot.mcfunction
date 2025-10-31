# Translate profile node information to item display information

## CONSTRAINTS
#   AS profile selector display
#   AT profile node

#=============================================================================================================

#say Load profile to slot

# Mark
tag @s remove Blank
tag @s add ProfileLoaded

# Team for glow color
team join Green

# Item name
data modify entity @s item.components."minecraft:custom_name" set value {text:"Load Profile",color:"green"}

# Lore
data modify entity @s item.components."minecraft:lore" set value [{text:"Click to load",italic:false,color:"green"}]
data modify entity @s item.components."minecraft:lore" append value [{text:"Shift click to delete",italic:false,color:"red"}]

# Profile id
execute store result entity @s item.components."minecraft:custom_data".profile_id int 1 run scoreboard players get @n[distance=..0.1,type=marker,tag=ProfileNode] profile.node.profile_id

# Item type
data modify entity @s item.id set value "minecraft:map"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.win_difficulty_1 matches 1 run data modify entity @s item.id set value "minecraft:warped_door"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.rescue_supplier matches 1 run data modify entity @s item.id set value "minecraft:bundle"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.win_difficulty_2 matches 1 run data modify entity @s item.id set value "minecraft:iron_pickaxe"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.match_bookshelf matches 1 run data modify entity @s item.id set value "minecraft:book"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.rescue_scientist matches 1 run data modify entity @s item.id set value "minecraft:brewing_stand"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.win_difficulty_3 matches 1 run data modify entity @s item.id set value "minecraft:campfire"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.talk_to_petitioner matches 1 run data modify entity @s item.id set value "minecraft:candle"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.light_altars matches 1 run data modify entity @s item.id set value "minecraft:light_blue_candle"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.rescue_petitioner matches 1 run data modify entity @s item.id set value "minecraft:soul_campfire"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.win_difficulty_4 matches 1 run data modify entity @s item.id set value "minecraft:echo_shard"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.destroy_crystals matches 1 run data modify entity @s item.id set value "minecraft:amethyst_shard"
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.story.adv.light_beacons matches 1 run data modify entity @s item.id set value "minecraft:nether_star"

# Load profile info
function exigence:hub/profile_selector/menu/display/text_displays/load_profile_info

# Summon pop block
execute at @s align xyz positioned ~ ~ ~-0.99 run function exigence:hub/profile_selector/menu/display/profile/effects/summon_pop_block


# If profile node is active, start selected
execute if score @n[distance=..0.1,type=marker,tag=ProfileNode] profile.node.profile_id = #compare profile.node.profile_id run function exigence:hub/profile_selector/menu/display/profile/select with entity @s item.components."minecraft:custom_data"