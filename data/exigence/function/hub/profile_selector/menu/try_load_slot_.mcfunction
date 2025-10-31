# Attempts to load specific slot #

## CONSTRAINTS
#   AT location

## INPUT
#   INT player_id
#   INT profile_selector_id
#   INT slot_id

#=============================================================================================================

#$say Try load slot $(slot_id)

# 1. Load the item display
$function exigence:hub/profile_selector/menu/load_slot_display {player_id:$(player_id),slot_id:$(slot_id),profile_selector_id:$(profile_selector_id)}

# 2. Always load blank and then just overwrite of the profile exists
execute as @n[distance=..0.1,type=item_display,tag=SlotDisplay] run function exigence:hub/profile_selector/menu/display/profile/set_blank

# 3. Load profile specific info (if exists)
$execute as @n[distance=..0.1,type=item_display,tag=SlotDisplay] in exigence:profile_data positioned 8 128 8 \
at @e[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.player_id=$(player_id),profile.node.slot_id=$(slot_id)}] run function exigence:hub/profile_selector/menu/display/profile/load_profile_to_slot
