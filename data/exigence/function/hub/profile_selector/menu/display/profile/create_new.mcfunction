# Create a new player profile in this slot, then load/select it

## CONSTRAINTS
#   AS item shop display

## INPUT
#   data: item.components."minecraft:custom_data"
#   SCORE #creating_coop Temp (Optional)
#   SCORE #coop_profile_id Temp (Optional)
#   SCORE #player_index Temp (Optional)

#====================================================================================================

#$say (D3) Create new slot:$(slot_id) profile_selector:$(profile_selector_id) player:$(player_id)

# Add local tag (to prevent overlapping effects from the "select" function)
tag @s add Creating

## PREP
execute at @s run function exigence:hub/profile_selector/menu/display/profile/effects/clear_menus
# Store difficulty if not coop, if if first coop
execute if score #creating_coop Temp matches 1 if score #player_index Temp matches 1 store result score #difficulty Temp run data get entity @s item.components."minecraft:custom_data".difficulty
execute unless score #creating_coop Temp matches 1 store result score #difficulty Temp run data get entity @s item.components."minecraft:custom_data".difficulty

## CREATE
# 0. Effects (particle/sounds)
execute at @s run playsound minecraft:block.beacon.activate block @p[tag=ProfileSelecting,distance=..16] ~ ~ ~ 1.0 1.2
execute at @s run particle happy_villager ~ ~ ~0.1 0.3 0.3 0.0 0.02 10

# 1. Create new profile
$scoreboard players set #compare profile.node.slot_id $(slot_id)
$execute at @s as @p[scores={hub.player.profile_selector_id=$(profile_selector_id)},tag=ProfileSelecting,distance=..16] in exigence:profile_data run function exigence:profile/profile_node/new_profile

# 2. Load newly created profile to slot
$execute in exigence:profile_data at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.player_id=$(player_id),profile.node.slot_id=$(slot_id)},tag=ProfileNode] \
run function exigence:hub/profile_selector/menu/display/profile/load_profile_to_slot

# 3. Switch to new profile
function exigence:hub/profile_selector/menu/display/profile/switch_to with entity @s item.components."minecraft:custom_data"

# Remove creating tag from player node
$execute in exigence:profile_data run tag @n[x=0,y=0,z=32,dx=15,dy=15,dz=15,scores={profile.node.player_id=$(player_id)},tag=PlayerNode] remove PlayerCreatingProfile

# Remove local tag
tag @s remove Creating
tag @s remove CreationProcess
