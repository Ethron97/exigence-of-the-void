# Verify if all co-op members are present inside the predungeon room

## CONSTRAINTS
#   AS/AT predungeon menu node

## OUTPUT
#   #predungeon_validate_coop Temp

#====================================================================================================

#say validate/coop/check

# Default to VALID
scoreboard players set #predungeon_validate_coop Temp 1

# Early return as VALID if not a co-op profile
execute unless score @s hub.entity.coop_profile_id matches 1.. run return 0
#----------------------------------------------------------------------------------------------------

scoreboard players operation #compare profile.node.coop_profile_id = @s hub.entity.coop_profile_id

# Get how many players SHOULD be here:
scoreboard players set #count_a Temp 0
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.coop_profile_id=1..},tag=ProfileNode] \
if score @s profile.node.coop_profile_id = #compare profile.node.coop_profile_id run scoreboard players add #count_a Temp 1

# Count how many players ARE here:
scoreboard players set #count_b Temp 0
execute as @a[tag=Predungeon,distance=..30] if score @s profile.player.coop_profile_id = #compare profile.node.coop_profile_id run scoreboard players add #count_b Temp 1

execute store result score #predungeon_validate_coop Temp if score #count_b Temp = #count_a Temp
execute if score #predungeon_validate_coop Temp matches 1 run return 0
#----------------------------------------------------------------------------------------------------

# If not all players are present, run sub-function to call out the specific players:
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.coop_profile_id=1..},tag=ProfileNode] \
if score @s profile.node.coop_profile_id = #compare profile.node.coop_profile_id run function exigence:hub/predungeon/validate/coop/is_online_player
