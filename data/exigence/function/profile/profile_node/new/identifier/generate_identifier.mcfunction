# Find a valid identifier to assign to a new profile

## CONSTRAINTS
#   AS player

## INPUT
#   SCORE #creating_coop Temp (Optional)
#   SCORE #coop_profile_id Temp (Optional)

## OUTPUT
#   exigence:temp identifier

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3) Get identifier

# Initialize array
scoreboard players set #max_identifiers Temp 18
data modify storage exigence:temp identifiers set value ["coal","resin_clump","honeycomb","glowstone_dust","prismarine_shard"\
,"resin_brick","redstone","amethyst_shard","iron_ingot","copper_ingot","gold_ingot","netherite_ingot"\
,"emerald","diamond","lapis_lazuli","quartz","nautilus_shell","prismarine_crystals"]
data modify storage exigence:temp invalid_identifiers set value []

# Get invalid identifiers from this player
function exigence:profile/profile_node/new/identifier/get_invalid_identifiers
# Get other identifiers (if creating coop)
scoreboard players operation #compare career.player_id = @s career.player_id
execute if score #creating_coop Temp matches 1 in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #compare career.player_id run function exigence:profile/profile_node/new/identifier/get_other_invalid_identifiers

# Start iteration to get first valid identifier
# Initialize guess
execute store result score #i Temp run random value 0..17
execute store result storage exigence:temp i int 1 run scoreboard players get #i Temp
# Begin iteration
function exigence:profile/profile_node/new/identifier/private/get_identifier_iterate with storage exigence:temp
