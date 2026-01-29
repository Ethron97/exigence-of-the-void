# Deselect other, if eixsts, then select this

## CONSTRAINTS
#   AS item shop display to select

## INPUT
#   data: item.components."minecraft:custom_data"

#====================================================================================================

say Switch to

# If there is entity to deselect... switching = true
execute at @s if entity @n[distance=..16,tag=SlotDisplay,tag=Selected] run scoreboard players set #switching Temp 1
execute at @s as @n[distance=..16,tag=SlotDisplay,tag=Selected] run function exigence:hub/profile_selector/menu/display/profile/deselect with entity @s item.components."minecraft:custom_data"

# Load actual profile to player
$execute as @p[distance=..16,tag=ProfileSelecting,scores={hub.player.profile_selector_id=$(profile_selector_id)}] \
in exigence:profile_data run function exigence:profile/profile_node/load_profile {profile_id:$(profile_id)}

function exigence:hub/profile_selector/menu/display/profile/select with entity @s item.components."minecraft:custom_data"

# Refresh coop status lists
scoreboard players operation #player_id Temp = @s hub.entity.player_id
function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/update_all_displays_player

scoreboard players set #switching Temp 0
