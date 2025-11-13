# Called when player walks too far away, or hovers over any other Slot Displays

## CONSTRAINTS
#   AS item shop display

#=============================================================================================================

say Cancel create new

# Remove tag
tag @s remove CreationProcess

# Remove glowing
data modify entity @s Glowing set value false

# Clear player as querying
scoreboard players operation #compare hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
execute at @s as @a[distance=..16] if score @s hub.player.profile_selector_id = #compare hub.entity.profile_selector_id run scoreboard players reset @s hub.player.query_selector_slot_id

# Remove step details
function exigence:hub/profile_selector/menu/display/profile/calls/private/remove_step_details with entity @s item.components."minecraft:custom_data"

# Remove difficulty selcetor buttons
execute at @s run kill @e[distance=..16,type=text_display,tag=KeepDisplay]
function exigence:hub/profile_selector/menu/display/profile/effects/remove_difficulty_selectors with entity @s item.components."minecraft:custom_data"

# Remove coop selector buttons
function exigence:hub/profile_selector/menu/display/profile/effects/remove_coop_selectors with entity @s item.components."minecraft:custom_data"

# Remove coop invitor buttons
function exigence:hub/profile_selector/menu/display/profile/effects/remove_coop_invitors with entity @s item.components."minecraft:custom_data"

# Reset invite related scores
scoreboard players operation #compare career.player_id = @p[distance=..16,tag=ProfileSelecting] career.player_id
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] \
if score @s profile.node.player_id = #compare career.player_id run function exigence:profile/player_node/reset_invite_scores

# Remove coop invitor buttons
execute at @s run function exigence:hub/profile_selector/menu/display/profile/effects/remove_player_head_selectors
execute at @s run function exigence:hub/profile_selector/menu/display/profile/effects/remove_invite_displays

execute at @s run playsound minecraft:block.wooden_trapdoor.close block @p[distance=..16,tag=ProfileSelecting] ~ ~ ~ 0.5 0.8
execute at @s run particle smoke ~ ~ ~0.1 0.3 0.3 0.0 0.01 5
