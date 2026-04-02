# Assign data after summon to reduce selectors

## CONSTRAINTS
#   AS profile node (new)

#====================================================================================================

data merge entity @s {Tags:["ProfileNode"],CustomName:[{text:"Marker | ProfileNode ",color:"gray"},{text:"a",color:"gold"}]}

# Assign difficulty
scoreboard players operation @s profile.node.profile_difficulty = #difficulty Temp

# Assign player id
scoreboard players operation @s profile.node.profile_id = #sequence profile.player.profile_id

# Assign "local" profile id (sequence that increments each profile this player creates)
scoreboard players operation @s profile.node.local_profile_id = #compare career.profiles_created

# Copy player id from profile
scoreboard players operation @s profile.node.player_id = #compare career.player_id
scoreboard players operation @s profile.node.coop_profile_index = #player_index Temp
# Copy co-op id
execute if score #creating_coop Temp matches 1 run scoreboard players operation @s profile.node.coop_profile_id = @s profile.node.profile_id
execute if score #creating_coop Temp matches 1 if score #coop_profile_id Temp matches 1.. run scoreboard players operation @s profile.node.coop_profile_id = #coop_profile_id Temp
#   Save stable id, which persists original relationships even if something gets deleted
execute if score #creating_coop Temp matches 1 run scoreboard players operation @s profile.node.coop_profile_id_original = @s profile.node.coop_profile_id

# Assign to marker customdata
data modify entity @s data.custom_data.profile_identifier set from storage exigence:temp identifier

# Copy data from item
data modify entity @s CustomName.extra[0].text set from entity @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,type=minecraft:item,limit=1] Item.components."minecraft:profile".name

execute store result storage exigence:temp local_profile_id int 1 run scoreboard players get @s profile.node.local_profile_id

# Assign "slot" id after validating (value 1-5, determines where it shows in the profile selector)
function exigence:profile/profile_node/new/validate_slot_id with storage exigence:temp
scoreboard players operation @s profile.node.slot_id = #compare profile.node.slot_id

# Add profile ID to the name
execute store result storage exigence:temp profile_id int 1 run scoreboard players get #sequence profile.player.profile_id
function exigence:profile/profile_node/new/private/add_profile_id_to_name with storage exigence:temp
