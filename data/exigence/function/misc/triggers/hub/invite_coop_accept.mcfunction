# Called by player who accepts a coop invite, either via tellraw or /trigger

## CONSTRAINTS
#   AS player

#====================================================================================================

#say Accept invite

# Reset trigger score
scoreboard players reset @s AcceptCoopInvite

execute at @s run playsound entity.player.levelup player @s ~ ~100 ~ 100 1

scoreboard players operation #compare hub.player_entity.query_idid = @s hub.player_entity.query_idid
# Find the player head that corresponds to
execute in exigence:hub positioned 999 128 6 as @e[type=item_display,tag=PlayerHeadDisplay,distance=..300] if score @s IDID = #compare hub.player_entity.query_idid \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/invite_accepted with entity @s item.components."minecraft:custom_data"

scoreboard players operation #compare career.player_id = @s career.player_id
# Update the status display for this player
execute in exigence:hub positioned 999 128 6 as @e[type=text_display,tag=StatusDisplay,distance=..300] if score @s hub.entity.player_id = #compare career.player_id \
run function exigence:hub/profile_selector/menu/display/coop_invitor/status/update_joined

# Put the current player into Limbo
#   De-select current profile (if one is selected)
execute at @s as @n[tag=SlotDisplay,tag=Selected,distance=..20] run function exigence:hub/profile_selector/menu/display/profile/deselect with entity @s item.components."minecraft:custom_data"

# Cancel in-process creation
execute at @s as @n[type=item_display,tag=SlotDisplay,tag=CreationProcess,distance=..20] run function exigence:hub/profile_selector/menu/display/profile/create_new_cancel with entity @s item.components."minecraft:custom_data"

# Remove chests
execute at @s as @n[type=marker,tag=ProfileSelectorNode,distance=..20] at @s run function exigence:hub/profile_selector/load/remove_chests

# Update all displays (incase they go limbo-ed off of a coop profile)
function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/reload_all_displays