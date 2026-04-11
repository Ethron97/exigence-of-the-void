# Called when player first clicks a blank slot to start the creation process

## CONSTRAINTS
#   AS item shop display

## INPUT
#   data: item.components."minecraft:"

#====================================================================================================

#$say (D3) Input create new (profile_selector:$(profile_selector_id) slot:$(slot_id))

# Tag self
#   This tag also makes this unhoverable, so you don't mess up the creation process
tag @s add CreationProcess
tag @s remove Hover

# Mark player as querying
$execute at @s run scoreboard players set @p[tag=ProfileSelecting,tag=Interacting,distance=..16] hub.player.query_selector_slot_id $(slot_id)

# Un-hover
function exigence:hub/profile_selector/menu/display/profile/calls/unhover with entity @s item.components."minecraft:custom_data"
# Show step details
execute at @s positioned ^ ^0.53 ^0 run function exigence:hub/profile_selector/menu/display/profile/calls/private/show_step_details {step_text:"Select Difficulty"}

# Summon difficulty selector buttons
function exigence:hub/profile_selector/menu/display/profile/effects/summon_difficulty_selectors
#   We will allow any of the base three at the start, but you must win any profile at least once to unlock Exigent levels.
#       For now, we will just load a (un(?))locked exigent difficulty.
#   If exigent levels are unlocked, allow choosing only the highest of the ones you have complete (like ror2)
#   (So, it is always four slots.)

# Effects
execute at @s run playsound minecraft:entity.ender_eye.death ui @p[tag=ProfileSelecting,tag=Interacting,distance=..16] ~ ~ ~ 1 1
execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

# Mark player node so we know it is creating
$execute in exigence:profile_data run tag @n[x=0,y=0,z=32,dx=15,dy=15,dz=15,scores={profile.node.player_id=$(player_id)},tag=PlayerNode] add PlayerCreatingProfile