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
execute at @s as @a[distance=..24] if score @s hub.player.profile_selector_id = #compare hub.entity.profile_selector_id run scoreboard players reset @s hub.player.query_selector_slot_id

# Remove step details
function exigence:hub/profile_selector/menu/display/profile/calls/private/remove_step_details with entity @s item.components."minecraft:custom_data"

# Remove difficulty selcetor buttons
function exigence:hub/profile_selector/menu/display/profile/effects/remove_difficulty_selectors with entity @s item.components."minecraft:custom_data"

# Remove coop selector buttons
function exigence:hub/profile_selector/menu/display/profile/effects/remove_coop_selectors with entity @s item.components."minecraft:custom_data"

execute at @s run playsound minecraft:block.wooden_trapdoor.close block @p[distance=..24] ~ ~ ~ 0.5 0.8
execute at @s run particle smoke ~ ~ ~0.1 0.3 0.3 0.0 0.01 5

