# Deselect other, if eixsts, then select this

## CONSTRAINTS
#   AS item shop display to select

## INPUT
#   data: item.components."minecraft:custom_data"

#=============================================================================================================

say Switch to

execute at @s as @n[distance=..16,tag=SlotDisplay,tag=Selected] run function exigence:hub/profile_selector/menu/display/profile/deselect with entity @s item.components."minecraft:custom_data"

function exigence:hub/profile_selector/menu/display/profile/select with entity @s item.components."minecraft:custom_data"

# Change player score (#compare gets set in previous function)
$execute at @s run scoreboard players set @p[distance=..16,tag=ProfileSelecting,scores={hub.player.profile_selector_id=$(profile_selector_id)}] profile.profile_id $(profile_id)

# Load actual profile to player
$execute as @p[distance=..16,tag=ProfileSelecting,scores={hub.player.profile_selector_id=$(profile_selector_id)}] \
in exigence:profile_data run function exigence:profile/profile_node/load_profile {profile_id:$(profile_id)}
