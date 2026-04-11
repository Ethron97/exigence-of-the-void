# Translate profile node information to item display information

## CONSTRAINTS
#   AS profile selector display
#   AT profile node

#====================================================================================================

#say (D3) Load profile to slot

# Mark
tag @s remove Blank
tag @s add ProfileLoaded
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.node.coop_profile_id matches 1.. run tag @s add Coop

# Team for glow color
team join Special

# Item name
data modify entity @s item.components."minecraft:custom_name" set value {text:"Load Profile",color:"yellow"}

# Lore
data modify entity @s item.components."minecraft:lore" set value [{text:"Click to load",italic:false,color:"yellow"}]
data modify entity @s item.components."minecraft:lore" append value [{text:"Shift click to delete",italic:false,color:"red"}]

# Profile id
scoreboard players operation @s hub.entity.profile_id = @n[type=marker,tag=ProfileNode,distance=..0.1] profile.node.profile_id
scoreboard players set @s hub.entity.coop_profile_id 0
scoreboard players operation @s hub.entity.coop_profile_id = @n[type=marker,tag=ProfileNode,distance=..0.1] profile.node.coop_profile_id

execute store result entity @s item.components."minecraft:custom_data".profile_id int 1 run scoreboard players get @s hub.entity.profile_id
execute store result entity @s item.components."minecraft:custom_data".coop_profile_id int 1 run scoreboard players get @s hub.entity.coop_profile_id

# Difficulty
execute store result entity @s item.components."minecraft:custom_data".difficulty int 1 run scoreboard players get @n[type=marker,tag=ProfileNode,distance=..0.1] profile.node.profile_difficulty

# Item type
data modify entity @s item.id set value "minecraft:map"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.win_difficulty_1 matches 1 run data modify entity @s item.id set value "minecraft:warped_door"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.rescue_supplier matches 1 run data modify entity @s item.id set value "minecraft:bundle"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.win_difficulty_2 matches 1 run data modify entity @s item.id set value "minecraft:iron_pickaxe"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.match_bookshelf matches 1 run data modify entity @s item.id set value "minecraft:book"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.rescue_scientist matches 1 run data modify entity @s item.id set value "minecraft:brewing_stand"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.win_difficulty_3 matches 1 run data modify entity @s item.id set value "minecraft:campfire"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.talk_to_petitioner matches 1 run data modify entity @s item.id set value "minecraft:candle"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.light_altars matches 1 run data modify entity @s item.id set value "minecraft:light_blue_candle"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.rescue_petitioner matches 1 run data modify entity @s item.id set value "minecraft:soul_campfire"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.win_difficulty_4 matches 1 run data modify entity @s item.id set value "minecraft:sculk_vein"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.destroy_crystals matches 1 run data modify entity @s item.id set value "minecraft:amethyst_shard"
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.story.adv.light_beacons matches 1 run data modify entity @s item.id set value "minecraft:nether_star"
#data modify entity @s item.id set value "minecraft:glass_pane"

# Load profile info
execute at @s run function exigence:hub/profile_selector/menu/display/profile/profile_info/load_profile_info with entity @s item.components."minecraft:custom_data"

# Load identifier
data modify entity @s item.components."minecraft:custom_data".identifier set from entity @n[type=marker,tag=ProfileNode,distance=..0.1] data.custom_data.profile_identifier
# Load stickers
function exigence:hub/profile_selector/menu/display/profile/effects/summon_stickers

# Summon pop block
execute at @s align xyz positioned ~ ~ ~-0.95 run function exigence:hub/profile_selector/menu/display/profile/effects/summon_pop_block

# If co-op, load status list
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.node.coop_profile_id matches 1.. at @s run function exigence:hub/profile_selector/menu/display/profile/effects/reload_coop_statuses with entity @s item.components."minecraft:custom_data"

# If profile node is active, start selected
execute if score @n[type=marker,tag=ProfileNode,distance=..0.1] profile.node.profile_id = #compare profile.node.profile_id run function exigence:hub/profile_selector/menu/display/profile/select with entity @s item.components."minecraft:custom_data"