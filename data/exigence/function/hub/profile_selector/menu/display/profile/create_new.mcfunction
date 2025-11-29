# Create a new player profile in this slot, then load/select it

## CONSTRAINTS
#   AS item shop display

## INPUT
#   data: item.components."minecraft:custom_data"
#   SCORE #coop_profile_id Temp (Optional)
#   SCORE #player_index Temp (Optional)

#=============================================================================================================

$say Create new slot:$(slot_id) profile_selector:$(profile_selector_id) player:$(player_id)

# Add local tag (to prevent overlapping effects from the "select" function)
tag @s add Creating

## PREP
execute at @s run function exigence:hub/profile_selector/menu/display/profile/effects/clear_menus

## CREATE
# 0. Effects (particle/sounds)
execute at @s run playsound minecraft:block.beacon.activate block @p[distance=..16,tag=ProfileSelecting] ~ ~ ~ 1.0 1.2
execute at @s run particle happy_villager ~ ~ ~0.1 0.3 0.3 0.0 0.02 10

# 1. Create new profile
$scoreboard players set #compare profile.node.slot_id $(slot_id)
$execute at @s as @p[distance=..16,tag=ProfileSelecting,scores={hub.player.profile_selector_id=$(profile_selector_id)}] in exigence:profile_data positioned 8 128 8 run function exigence:profile/profile_node/new_profile

# 2. Load newly created profile to slot
$execute in exigence:profile_data positioned 8 128 8 at @e[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.player_id=$(player_id),profile.node.slot_id=$(slot_id)}] \
run function exigence:hub/profile_selector/menu/display/profile/load_profile_to_slot

# 3. Switch to new profile
function exigence:hub/profile_selector/menu/display/profile/switch_to with entity @s item.components."minecraft:custom_data"

# Remove local tag
tag @s remove Creating
tag @s remove CreationProcess
