# Find a valid identifier to assign to a new profile

## CONSTRAINTS
#   AS player

## INPUT
#   SCORE #creating_coop Temp (Optional)
#   SCORE #coop_profile_id Temp (Optional)

## OUTPUT
#   exigence:temp identifier

#=============================================================================================================

#say Get identifier

# Initialize array
scoreboard players set #max_identifiers Temp 18
data modify storage exigence:temp identifiers set value ["minecraft:coal","minecraft:resin_clump","minecraft:honeycomb","minecraft:glowstone_dust","minecraft:prismarine_shard"\
,"minecraft:resin_brick","minecraft:redstone","minecraft:amethyst_shard","minecraft:iron_ingot","minecraft:copper_ingot","minecraft:gold_ingot","minecraft:netherite_ingot"\
,"minecraft:emerald","minecraft:diamond","minecraft:lapis_lazuli","minecraft:quartz","minecraft:nautilus_shell","minecraft:prismarine_crystals"]
data modify storage exigence:temp invalid_identifiers set value []

# Get invalid identifiers from this player
function exigence:profile/profile_node/new/identifier/get_invalid_identifiers
# Get other identifiers (if creating coop)
scoreboard players operation #compare career.player_id = @s career.player_id
execute if score #creating_coop Temp matches 1 in exigence:profile_data positioned 8 3 8 as @e[distance=..32,type=armor_stand,tag=PlayerNode] \
if score @s profile.node.player_id = #compare career.player_id run function exigence:profile/profile_node/new/identifier/get_other_invalid_identifiers

# Start iteration to get first valid identifier
# Initialize guess
execute store result score #i Temp run random value 0..17
execute store result storage exigence:temp i int 1 run scoreboard players get #i Temp
# Begin iteration
function exigence:profile/profile_node/new/identifier/private/get_identifier_iterate with storage exigence:temp
