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

# Background
execute align z positioned ~ ~-1.0 ~0.01 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/list_background with entity @s item.components."minecraft:custom_data"

# Player 1
$execute align z positioned ~ ~-0.95 ~0.05 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/try_load_player_list_display {player_index:1,coop_profile_id:$(coop_profile_id)}
#execute align z positioned ~ ~-0.95 ~0.05 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/load_player_list_display {num:1,coop_profile_id:0}

# Player 2
$execute align z positioned ~ ~-1.05 ~0.05 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/try_load_player_list_display {player_index:2,coop_profile_id:$(coop_profile_id)}
#execute align z positioned ~ ~-1.05 ~0.05 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/load_player_list_display {num:2,coop_profile_id:0}

# Player 3
$execute align z positioned ~ ~-1.15 ~0.05 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/try_load_player_list_display {player_index:3,coop_profile_id:$(coop_profile_id)}
#execute align z positioned ~ ~-1.15 ~0.05 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/load_player_list_display {num:3,coop_profile_id:0}

# Player 4
$execute align z positioned ~ ~-1.25 ~0.05 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/try_load_player_list_display {player_index:4,coop_profile_id:$(coop_profile_id)}
#execute align z positioned ~ ~-1.25 ~0.05 run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/load_player_list_display {num:4,coop_profile_id:0}
