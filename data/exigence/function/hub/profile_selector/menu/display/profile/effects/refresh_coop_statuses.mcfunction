# Refresh existing coop player displays
# Called when player(s) switch to/from this profile, or one of them logs in/out

## CONSTRAINTS
#   AS/AT slot display

## INPUT
#   INT coop_profile_id

#====================================================================================================

say Refresh coop statuses

execute positioned ~ ~-1 ~ as @e[type=text_display,tag=CoopPlayerDisplay,distance=..1] \
run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/private/update_display
