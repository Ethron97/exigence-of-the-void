# Clear all menus other than the main slot
#   Called either when a create is finished or cancelled

## CONSTRAINTS
#   AS/AT slot display

#=============================================================================================================

# Remove glowing
data modify entity @s Glowing set value false

# Remove step details
function exigence:hub/profile_selector/menu/display/profile/calls/private/remove_step_details with entity @s item.components."minecraft:custom_data"

# Remove difficulty selcetor buttons
kill @e[distance=..16,type=text_display,tag=KeepDisplay]
function exigence:hub/profile_selector/menu/display/profile/effects/remove_difficulty_selectors with entity @s item.components."minecraft:custom_data"

# Remove coop selector buttons
function exigence:hub/profile_selector/menu/display/profile/effects/remove_coop_selectors with entity @s item.components."minecraft:custom_data"

# Remove coop invitor buttons
function exigence:hub/profile_selector/menu/display/profile/effects/remove_coop_invitors with entity @s item.components."minecraft:custom_data"

# Remove coop invitor buttons
function exigence:hub/profile_selector/menu/display/profile/effects/remove_player_head_selectors
function exigence:hub/profile_selector/menu/display/profile/effects/remove_invite_displays
