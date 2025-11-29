# Update the current list of heads for this profile selector

## CONSTRAINTS
#   AS/AT slot display

#=============================================================================================================

#say Upsert heads

# As all existing heads, delete if player is not online
execute as @e[distance=..16,type=item_display,tag=PlayerHeadDisplay] run function exigence:hub/profile_selector/menu/display/player_head/load/downsert_head with entity @s item.components."minecraft:custom_data"

# Store data to temp
data modify storage exigence:temp profile_selector_id set from entity @s item.components."minecraft:custom_data".profile_selector_id
data modify storage exigence:temp slot_id set from entity @s item.components."minecraft:custom_data".slot_id
data modify storage exigence:temp idid set from entity @s item.components."minecraft:custom_data".idid
data modify storage exigence:temp player_id set from entity @s item.components."minecraft:custom_data".player_id
data modify storage exigence:temp profile_id set from entity @s item.components."minecraft:custom_data".profile_id

# As all players (other than the one in the selection room), create new head if it does not exist
scoreboard players operation #compare hub.profile_selector_id = @s hub.entity.profile_selector_id

execute as @a[scores={career.settings.allow_coop_invites=1}] unless score @s hub.player.profile_selector_id = #compare hub.profile_selector_id run function exigence:hub/profile_selector/menu/display/player_head/load/upsert_player
# FOR TESTING ONLY, ALLOW TO SEE OUR OWN HEAD IN THE DISPLAY:
#execute as @a run function exigence:hub/profile_selector/menu/display/player_head/load/upsert_player
