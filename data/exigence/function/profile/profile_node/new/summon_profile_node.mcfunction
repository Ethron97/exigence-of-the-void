# Summon a new player node

## CONSTRAINTS
#   AS player
#   AT location

#=============================================================================================================

summon minecraft:marker ~ ~ ~ {Tags:["NewProfileNode","ProfileNode"]}

# Assign player id
execute as @e[distance=..1,type=minecraft:marker,tag=NewProfileNode] run scoreboard players operation @s profile.node.profile_id = #sequence profile.profile_id

# Copy player id from profile
scoreboard players operation @e[distance=..1,type=marker,tag=NewProfileNode] profile.node.player_id = @s profile.player_id

# Clone blocks
clone 0 0 0 15 3 0 ~ ~-1 ~


# Edit sign data
data modify block ~ ~1 ~ profile set from entity @n[distance=..1000,type=minecraft:item] Item.components."minecraft:profile"
data modify block ~ ~ ~ front_text.messages[0] set from entity @n[distance=..1000,type=minecraft:item] Item.components."minecraft:profile".name

execute store result storage exigence:temp player_id int 1 run scoreboard players get @s profile.player_id
# Assign local profile id
execute as @e[distance=..1,type=minecraft:marker,tag=NewProfileNode] run function exigence:profile/profile_node/new/set_local_id_m with storage exigence:temp

execute store result storage exigence:temp profile_id int 1 run scoreboard players get @s profile.profile_id
execute store result storage exigence:temp local_profile_id int 1 run scoreboard players get @n[distance=..1,type=minecraft:marker,tag=NewProfileNode] profile.node.local_profile_id
function exigence:profile/profile_node/new/set_profile_sign_m with storage exigence:temp


# Remove local tag
tag @e[distance=..1,type=minecraft:marker,tag=NewProfileNode] remove NewProfileNode
