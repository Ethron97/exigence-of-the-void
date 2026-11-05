# Find a valid identifier to assign to a new profile
#   Icon = item + color
#   profile entity custom data .profile_icon = sprite text component with color
#   Example: {sprite:"minecraft:item/diamond",atlas:"items",color:"white"}

## CONSTRAINTS
#   AS player

## INPUT
#   SCORE #creating_coop Temp (Optional)
#   SCORE #coop_profile_id Temp (Optional)

## OUTPUT
#   exigence:profile_icon icon_output

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3) Get profile identifier

# Initialize array
scoreboard players set #max_items Temp 18
data modify storage exigence:profile_icon items set value [\
"minecraft:item/music_disc_tears"\
,"minecraft:item/iron_nautilus_armor"\
,"minecraft:item/wind_charge"\
,"minecraft:item/snowball"\
,"minecraft:item/prismarine_shard"\
,"minecraft:item/feather"\
,"minecraft:item/cake"\
,"minecraft:item/bone_meal"\
,"minecraft:item/milk_bucket"\
,"minecraft:item/iron_ingot"\
,"minecraft:item/egg"\
,"minecraft:item/nether_star"\
,"minecraft:item/sugar"\
,"minecraft:item/emerald"\
,"minecraft:item/diamond"\
,"minecraft:item/phantom_membrane"\
,"minecraft:item/quartz"\
,"minecraft:item/prismarine_crystals"]

# Prevent this profile from locally duplicating the same icon
#   Remove invalid identifiers from this player
function exigence:profile/profile_node/new/identifier/remove_invalid_items
#   Remove other identifiers (if creating coop)
scoreboard players operation #compare career.player_id = @s career.player_id
execute if score #creating_coop Temp matches 1 in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #compare career.player_id run function exigence:profile/profile_node/new/identifier/remove_other_invalid_items

# Prevent this profile from globally duplicating the same icon + color
scoreboard players set #max_icons Temp 0
data modify storage exigence:profile_icon icons set value []
scoreboard players set #i Temp 0
execute store result storage exigence:profile_icon i int 1 run scoreboard players get #i Temp
#   Of the valid identifiers, create new array of identifier + color
function exigence:profile/profile_node/new/identifier/private/get_all_icons_iterate with storage exigence:profile_icon

# Remove invalid sprite+color from ALL other profile nodes
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
run function exigence:profile/profile_node/new/identifier/private/try_remove_icon with entity @s data.custom_data

# Final guess based on remaining list of possible icons
#   Naturally weights itself to pick icons with less-used sprites
execute store result storage exigence:profile_icon max_icons int 1 run scoreboard players get #max_icons Temp
function exigence:profile/profile_node/new/identifier/private/choose_final_icon with storage exigence:profile_icon

# Start iteration to get first valid identifier
# Initialize guess
#execute store result score #i Temp run random value 0..17
#execute store result storage exigence:profile_icon i int 1 run scoreboard players get #i Temp
# Begin iteration
#function exigence:profile/profile_node/new/identifier/private/get_identifier_iterate with storage exigence:temp
