# Update every player list display (update, not resummon) for a SPECIFIC PLAYER

## INPUT
#   SCORE #player_id Temp

#====================================================================================================

#say Update all displays PLAYER

execute in exigence:hub positioned 999.5 128 6.5 as @e[distance=..200,type=text_display,tag=CoopPlayerDisplay] \
if score @s hub.entity.player_id = #player_id Temp run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/private/update_display
