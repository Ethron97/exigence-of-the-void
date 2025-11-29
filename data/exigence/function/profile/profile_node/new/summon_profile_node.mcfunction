# Summon a new profile node

## CONSTRAINTS
#   AS player
#   AT location

#=============================================================================================================

summon minecraft:marker ~ ~ ~ {Tags:["NewProfileNode","ProfileNode"]}

# Assign player id
execute as @n[distance=..1,type=minecraft:marker,tag=NewProfileNode] run scoreboard players operation @s profile.node.profile_id = #sequence profile.player.profile_id

# Copy player id from profile
scoreboard players operation @n[distance=..1,type=marker,tag=NewProfileNode] profile.node.player_id = @s career.player_id
scoreboard players operation @n[distance=..1,type=marker,tag=NewProfileNode] profile.node.coop_profile_index = #player_index Temp
# Copy co-op id
execute if score #creating_coop Temp matches 1 as @n[distance=..1,type=marker,tag=NewProfileNode] run scoreboard players operation @s profile.node.coop_profile_id = @s profile.node.profile_id
execute if score #creating_coop Temp matches 1 if score #coop_profile_id Temp matches 1.. as @n[distance=..1,type=marker,tag=NewProfileNode] run scoreboard players operation @s profile.node.coop_profile_id = #coop_profile_id Temp

# Clone blocks
clone 0 0 0 15 3 0 ~ ~-1 ~

# Edit sign data
data modify block ~ ~1 ~ profile set from entity @n[distance=..1000,type=minecraft:item] Item.components."minecraft:profile"
data modify block ~ ~ ~ front_text.messages[0] set from entity @n[distance=..1000,type=minecraft:item] Item.components."minecraft:profile".name

# Assign "local" profile id (sequence that increments each profile this player creates)
scoreboard players operation @n[distance=..1,type=minecraft:marker,tag=NewProfileNode] profile.node.local_profile_id = @s career.profiles_created

execute store result storage exigence:temp profile_id int 1 run scoreboard players get @s profile.player.profile_id
execute store result storage exigence:temp player_id int 1 run scoreboard players get @s career.player_id
execute store result storage exigence:temp local_profile_id int 1 run scoreboard players get @n[distance=..1,type=minecraft:marker,tag=NewProfileNode] profile.node.local_profile_id

# Assign "slot" id after validating (value 1-5, determines where it shows in the profile selector)
function exigence:profile/profile_node/new/validate_slot_id with storage exigence:temp
scoreboard players operation @n[distance=..1,type=minecraft:marker,tag=NewProfileNode] profile.node.slot_id = #compare profile.node.slot_id

execute store result storage exigence:temp slot_id int 1 run scoreboard players get #compare profile.node.slot_id
function exigence:profile/profile_node/new/set_profile_sign_m with storage exigence:temp

# Remove local tag
tag @n[distance=..1,type=minecraft:marker,tag=NewProfileNode] remove NewProfileNode
