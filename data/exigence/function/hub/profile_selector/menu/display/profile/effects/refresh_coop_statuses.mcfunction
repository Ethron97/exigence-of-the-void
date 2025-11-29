# Summon coop status displays
#   For coop profiles, list P2-4 below the profile icon
#   Assumes this is a coop profile
# Called when a coop profile is loaded to slot (creation or room enter)

## CONSTRAINTS
#   AS/AT slot display

## INPUT
#   INT coop_profile_id

#=============================================================================================================

#say Summon coop statuses

# Delete existing statuses
function exigence:hub/profile_selector/menu/display/text_displays/hide_coop_list with entity @s item.components."minecraft:custom_data"

# Player 1
$execute align z positioned ~ ~-0.9 ~0.01 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/try_load_player_list_display {player_index:1,coop_profile_id:$(coop_profile_id)}

# Player 2
$execute align z positioned ~ ~-1.0 ~0.01 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/try_load_player_list_display {player_index:2,coop_profile_id:$(coop_profile_id)}

# Player 3
$execute align z positioned ~ ~-1.1 ~0.01 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/try_load_player_list_display {player_index:3,coop_profile_id:$(coop_profile_id)}

# Player 4
$execute align z positioned ~ ~-1.2 ~0.01 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/try_load_player_list_display {player_index:4,coop_profile_id:$(coop_profile_id)}
