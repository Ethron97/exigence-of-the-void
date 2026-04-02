# Summon a new profile node

## CONSTRAINTS
#   AS player
#   AT location

## INPUT
#   SCORE #difficulty Temp
#   SCORE #creating_coop Temp (Optional)
#   SCORE #coop_profile_id Temp (Optional)

#====================================================================================================

# Clone blocks
clone 0 0 0 15 3 0 ~ ~-1 ~
setblock ~ ~-1 ~ gold_block

# Prep data
execute store result storage exigence:temp profile_id int 1 run scoreboard players get @s profile.player.profile_id
execute store result storage exigence:temp player_id int 1 run scoreboard players get @s career.player_id
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare career.profiles_created = @s career.profiles_created

# Get identifier (outputs to exigence:temp identifier)
execute unless score #creating_coop Temp matches 1 run function exigence:profile/profile_node/new/identifier/generate_identifier
#   IF COOP: Only generate new one if there is not one already popualated
execute if score #creating_coop Temp matches 1 unless data storage exigence:temp identifier run function exigence:profile/profile_node/new/identifier/generate_identifier


## SUMMON ENTITY
#   with setups
execute summon minecraft:marker run function exigence:profile/profile_node/new/private/profile_node_data


# Edit sign data
data modify block ~ ~1 ~ profile set from entity @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,type=minecraft:item,limit=1] Item.components."minecraft:profile"
data modify block ~ ~ ~ front_text.messages[0] set from entity @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,type=minecraft:item,limit=1] Item.components."minecraft:profile".name

execute store result storage exigence:temp slot_id int 1 run scoreboard players get #compare profile.node.slot_id
function exigence:profile/profile_node/new/set_profile_sign_m with storage exigence:temp
